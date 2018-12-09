#pragma once

#include "editorwindow.h"

class lua_State;
class QTimer;

class SceneWindow : public EditorWindow {
public:
    SceneWindow(QWidget *parent = nullptr);
	~SceneWindow() override;

protected:
    void tick();

	lua_State* L;
	QTimer *timer;
};
