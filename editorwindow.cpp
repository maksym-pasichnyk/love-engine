#include "editorwindow.h"

/*enum WindowType {
    Widget = 0x00000000,
    Window = 0x00000001,
    Dialog = 0x00000002 | Window,
    Sheet = 0x00000004 | Window,
    Drawer = Sheet | Dialog,
    Popup = 0x00000008 | Window,
    Tool = Popup | Dialog,
    ToolTip = Popup | Sheet,
    SplashScreen = ToolTip | Dialog,
    Desktop = 0x00000010 | Window,
    SubWindow = 0x00000012,
    ForeignWindow = 0x00000020 | Window,
    CoverWindow = 0x00000040 | Window,

    WindowType_Mask = 0x000000ff,
    MSWindowsFixedSizeDialogHint = 0x00000100,
    MSWindowsOwnDC = 0x00000200,
    BypassWindowManagerHint = 0x00000400,
    X11BypassWindowManagerHint = BypassWindowManagerHint,
    FramelessWindowHint = 0x00000800,
    WindowTitleHint = 0x00001000,
    WindowSystemMenuHint = 0x00002000,
    WindowMinimizeButtonHint = 0x00004000,
    WindowMaximizeButtonHint = 0x00008000,
    WindowMinMaxButtonsHint = WindowMinimizeButtonHint | WindowMaximizeButtonHint,
    WindowContextHelpButtonHint = 0x00010000,
    WindowShadeButtonHint = 0x00020000,
    WindowStaysOnTopHint = 0x00040000,
    WindowTransparentForInput = 0x00080000,
    WindowOverridesSystemGestures = 0x00100000,
    WindowDoesNotAcceptFocus = 0x00200000,
    MaximizeUsingFullscreenGeometryHint = 0x00400000,

    CustomizeWindowHint = 0x02000000,
    WindowStaysOnBottomHint = 0x04000000,
    WindowCloseButtonHint = 0x08000000,
    MacWindowToolBarButtonHint = 0x10000000,
    BypassGraphicsProxyWidget = 0x20000000,
    NoDropShadowWindowHint = 0x40000000,
    WindowFullscreenButtonHint = 0x80000000
};*/

#include <QtCore/qglobal.h>
#include <QAction>
#include <QLabel>
#include <QLayout>
#include <QMainWindow>

constexpr auto flags = Qt::WindowFlags();

EditorWindow::EditorWindow(const QString& title, QWidget *parent) : QDockWidget(title, parent, flags) {
    setAllowedAreas(Qt::DockWidgetArea::AllDockWidgetAreas);
    setContentsMargins(0, 0, 0, 0);
}
