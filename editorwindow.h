#pragma once

#include <QDockWidget>

class EditorWindow : public QDockWidget {
public:
    EditorWindow(const QString& title, QWidget *parent = nullptr);
    virtual ~EditorWindow() override = default;
};
