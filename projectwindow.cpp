#include "projectwindow.h"

#include <QFileSystemModel>
#include <QMainWindow>
#include <QTreeView>
#include <QApplication>
#include <QHeaderView>
#include <QPushButton>

#include <algorithm>

struct ProjectFileSystem : public QFileSystemModel {
public:
    ProjectFileSystem() : QFileSystemModel() {
        QStringList filters;
        filters << "*.lua";

        setFilter(QDir::Files | QDir::AllDirs | QDir::NoDotAndDotDot);
        setNameFilters(filters);
        setNameFilterDisables(false);
    }

private:
    int columnCount(const QModelIndex &parent) const override;
    QVariant headerData(int section, Qt::Orientation orientation, int role) const override;
};

int ProjectFileSystem::columnCount(const QModelIndex &parent) const {
    Q_UNUSED(parent);

    return 1;
}

QVariant ProjectFileSystem::headerData(int section, Qt::Orientation orientation, int role) const {
    Q_UNUSED(section);
    Q_UNUSED(orientation);
    Q_UNUSED(role);

    return QVariant();
}

ProjectWindow::ProjectWindow(QWidget *parent) : EditorWindow("Project", parent) {
    static QDir root(QCoreApplication::applicationDirPath());
//    static QDir path(QDir::cleanPath(root.path() + QDir::separator() + "assets"));

//    if (!path.exists()) {
//        root.mkdir("assets");
//    }

	auto path = root;

    auto model = new ProjectFileSystem;
    auto tree = new QTreeView;

    tree->setUniformRowHeights(true);

    tree->setHeaderHidden(true);
    tree->setDragEnabled(true);
    tree->setDragDropMode(QAbstractItemView::InternalMove);
    tree->setSelectionMode(QAbstractItemView::MultiSelection);
    tree->setDropIndicatorShown(true);
    tree->setSelectionBehavior(QAbstractItemView::SelectRows);
    tree->setFocusPolicy(Qt::FocusPolicy::NoFocus);
    tree->setModel(model);
    tree->setRootIndex(model->setRootPath(path.path()));

    tree->setAnimated(false);
    tree->setIndentation(20);
    tree->setSortingEnabled(false);
    tree->sortByColumn(1, Qt::SortOrder::AscendingOrder);

    setWidget(tree);
}

#include "projectwindow.moc"
