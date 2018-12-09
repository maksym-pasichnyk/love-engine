#include <QDebug>
#include <QTimer>
#include <QCoreApplication>
#include <QDir>

extern "C" {
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>
}

#include "scenewindow.h"

#include <cstring>
#include "common/version.h"
#include "common/runtime.h"
#include "common/Module.h"
#include "modules/love/love.h"
#include <QWindow>
#include <SDL_syswm.h>

#include "modules/window/Window.h"
#include "modules/timer/Timer.h"
#include "modules/graphics/Graphics.h"

#define WINDOW (love::Module::getInstance<love::window::Window>(love::Module::M_WINDOW))
#define TIMER (love::Module::getInstance<love::timer::Timer>(love::Module::M_TIMER))
#define GRAPHICS (love::Module::getInstance<love::graphics::Graphics>(love::Module::M_GRAPHICS))

static int love_preload(lua_State *L, lua_CFunction f, const char *name) {
	lua_getglobal(L, "package");
	lua_getfield(L, -1, "preload");
	lua_pushcfunction(L, f);
	lua_setfield(L, -2, name);
	lua_pop(L, 2);
	return 0;
}

SceneWindow::SceneWindow(QWidget *parent) : EditorWindow("Scene", parent), L(nullptr) {
	L = luaL_newstate();
	luaL_openlibs(L);

	love_preload(L, luaopen_love, "love");

	{
		lua_newtable(L);

		lua_pushstring(L, "embedded boot.lua");
		lua_rawseti(L, -2, -1);

//		lua_pushstring(L, ".");
//		lua_rawseti(L, -2, 1);

		lua_setglobal(L, "arg");
	}

	lua_getglobal(L, "require");
	lua_pushstring(L, "love");
	lua_call(L, 1, 1);

	lua_pop(L, 1);

	lua_getglobal(L, "require");
	lua_pushstring(L, "love.boot");
	lua_call(L, 1, 1);

	lua_pop(L, 1);

	luaL_dostring(L, R"(
		love.boot()
		love.init()

		if love.load then
			love.load(love.arg.parseGameArguments(arg), arg)
		end
	)");

	TIMER->step();

	SDL_SysWMinfo systemInfo;
	SDL_VERSION(&systemInfo.version);
	SDL_GetWindowWMInfo(*reinterpret_cast<SDL_Window**>(reinterpret_cast<quint8*>(WINDOW) + 152), &systemInfo);

	auto love2D = QWidget::createWindowContainer(QWindow::fromWinId(systemInfo.info.x11.window), this);
	setWidget(love2D);

	timer = new QTimer(love2D);
	connect(timer, &QTimer::timeout, this, &SceneWindow::tick);
	timer->start();
}

SceneWindow::~SceneWindow() {
	lua_close(L);
}

void SceneWindow::tick() {
	if (!isVisible()) {
		return;
	}

	lua_getglobal(L, "love");
	lua_getfield(L, -1, "event");
	if (!lua_isnoneornil(L, -1)) {
		lua_getfield(L, -1, "pump");
		lua_call(L, 0, 0);

		luaL_dostring(L, R"(
			for name, a,b,c,d,e,f in love.event.poll() do
				if name == "quit" then
					if not love.quit or not love.quit() then
						return a or 0
					end
				end
				love.handlers[name](a,b,c,d,e,f)
			end
		)");
	}

	double dt = TIMER->step();

	lua_getglobal(L, "love");
	lua_getfield(L, -1, "update");
	if (!lua_isnoneornil(L, -1)) {
		lua_pushnumber(L, dt);
		lua_call(L, 1, 0);
	}

	auto graphics = GRAPHICS;
	if (graphics->isActive()) {
		graphics->origin();
		graphics->clear(graphics->getBackgroundColor(), 0, 1);

		lua_getglobal(L, "love");
		lua_getfield(L, -1, "draw");
		if (!lua_isnoneornil(L, -1)) {
			lua_call(L, 0, 0);
		}

		graphics->present(L);
	}
}