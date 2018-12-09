#include "mainwindow.h"
#include <QApplication>
#include <modules/love/love.h>

int main(int argc, char *argv[]) {
    QApplication a(argc, argv);
    QApplication::setApplicationName(QString::asprintf("LOVE %s (%s)", love_version(), love_codename()));

    MainWindow window;
    window.show();

    return QApplication::exec();
}
