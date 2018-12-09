cmake_minimum_required(VERSION 3.12)
project(editor)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(Qt5Core REQUIRED)
find_package(Qt5Widgets REQUIRED)
find_package(Qt5Quick REQUIRED)
find_package(Qt5X11Extras REQUIRED)

include_directories(.)
include_directories(./../love/src/)
include_directories(./../love/src/modules)
include_directories(/usr/include/SDL2)
include_directories(/usr/include/luajit-2.0)

add_executable(editor
        editorwindow.cpp
        editorwindow.h
        hierarchywindow.cpp
        hierarchywindow.h
        inspectorwindow.cpp
        inspectorwindow.h
        main.cpp
        mainwindow.cpp
        mainwindow.h
        projectwindow.cpp
        projectwindow.h
        scenewindow.cpp
        scenewindow.h)

target_link_libraries(editor SDL2 luajit-5.1 love)
target_link_libraries(editor Qt5::Core Qt5::Widgets Qt5::Quick Qt5::X11Extras)
