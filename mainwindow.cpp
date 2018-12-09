#include "editorwindow.h"
#include "hierarchywindow.h"
#include "inspectorwindow.h"
#include "mainwindow.h"
#include "projectwindow.h"
#include "scenewindow.h"

#include <QDockWidget>
#include <QGraphicsScene>
#include <QGraphicsView>
#include <QGroupBox>
#include <QOpenGLWidget>
#include <QVBoxLayout>

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent) {
    setDockOptions(DockOption::AnimatedDocks | DockOption::AllowNestedDocks | DockOption::AllowTabbedDocks);
    setWindowState(windowState() | Qt::WindowMaximized);
    setTabPosition(Qt::AllDockWidgetAreas, QTabWidget::North);

    setGeometry(0, 0, 640, 480);
    setContentsMargins(5, 5, 5, 5);

//    auto inspector = new InspectorWindow(this);
//    auto hierarchy = new HierarchyWindow(this);
    auto scene = new SceneWindow(this);
//    auto project = new ProjectWindow(this);

//    addDockWidget(Qt::DockWidgetArea::LeftDockWidgetArea, inspector);
//    addDockWidget(Qt::DockWidgetArea::LeftDockWidgetArea, hierarchy);
    addDockWidget(Qt::DockWidgetArea::LeftDockWidgetArea, scene);
//    addDockWidget(Qt::DockWidgetArea::LeftDockWidgetArea, project);

//    splitDockWidget(hierarchy, inspector, Qt::Orientation::Horizontal);
//    splitDockWidget(hierarchy, scene, Qt::Orientation::Horizontal);
//	splitDockWidget(hierarchy, project, Qt::Orientation::Vertical);
}