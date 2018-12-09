#-------------------------------------------------
#
# Project created by QtCreator 2018-12-06T04:35:01
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = PixelEditor2D
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++17

SOURCES += \
        main.cpp \
        mainwindow.cpp \
    editorwindow.cpp \
    hierarchywindow.cpp \
    inspectorwindow.cpp \
    scenewindow.cpp \
    projectwindow.cpp \

HEADERS += \
        mainwindow.h \
    editorwindow.h \
    hierarchywindow.h \
    inspectorwindow.h \
    scenewindow.h \
    projectwindow.h \
    ../love/src/common/android.h \
    ../love/src/common/b64.h \
    ../love/src/common/Color.h \
    ../love/src/common/config.h \
    ../love/src/common/Data.h \
    ../love/src/common/delay.h \
    ../love/src/common/deprecation.h \
    ../love/src/common/EnumMap.h \
    ../love/src/common/Exception.h \
    ../love/src/common/halffloat.h \
    ../love/src/common/int.h \
    ../love/src/common/ios.h \
    ../love/src/common/macosx.h \
    ../love/src/common/math.h \
    ../love/src/common/Matrix.h \
    ../love/src/common/Memoizer.h \
    ../love/src/common/memory.h \
    ../love/src/common/Module.h \
    ../love/src/common/Object.h \
    ../love/src/common/Optional.h \
    ../love/src/common/pixelformat.h \
    ../love/src/common/Reference.h \
    ../love/src/common/runtime.h \
    ../love/src/common/Stream.h \
    ../love/src/common/StringMap.h \
    ../love/src/common/types.h \
    ../love/src/common/utf8.h \
    ../love/src/common/Variant.h \
    ../love/src/common/Vector.h \
    ../love/src/common/version.h \
    ../love/src/modules/audio/null/Audio.h \
    ../love/src/modules/audio/null/RecordingDevice.h \
    ../love/src/modules/audio/null/Source.h \
    ../love/src/modules/audio/openal/Audio.h \
    ../love/src/modules/audio/openal/Effect.h \
    ../love/src/modules/audio/openal/Filter.h \
    ../love/src/modules/audio/openal/Pool.h \
    ../love/src/modules/audio/openal/RecordingDevice.h \
    ../love/src/modules/audio/openal/Source.h \
    ../love/src/modules/audio/Audio.h \
    ../love/src/modules/audio/Effect.h \
    ../love/src/modules/audio/Filter.h \
    ../love/src/modules/audio/RecordingDevice.h \
    ../love/src/modules/audio/Source.h \
    ../love/src/modules/audio/wrap_Audio.h \
    ../love/src/modules/audio/wrap_RecordingDevice.h \
    ../love/src/modules/audio/wrap_Source.h \
    ../love/src/modules/data/ByteData.h \
    ../love/src/modules/data/CompressedData.h \
    ../love/src/modules/data/Compressor.h \
    ../love/src/modules/data/DataModule.h \
    ../love/src/modules/data/DataView.h \
    ../love/src/modules/data/HashFunction.h \
    ../love/src/modules/data/wrap_ByteData.h \
    ../love/src/modules/data/wrap_CompressedData.h \
    ../love/src/modules/data/wrap_Data.h \
    ../love/src/modules/data/wrap_DataModule.h \
    ../love/src/modules/data/wrap_DataView.h \
    ../love/src/modules/event/sdl/Event.h \
    ../love/src/modules/event/Event.h \
    ../love/src/modules/event/wrap_Event.h \
    ../love/src/modules/filesystem/physfs/File.h \
    ../love/src/modules/filesystem/physfs/Filesystem.h \
    ../love/src/modules/filesystem/DroppedFile.h \
    ../love/src/modules/filesystem/File.h \
    ../love/src/modules/filesystem/FileData.h \
    ../love/src/modules/filesystem/Filesystem.h \
    ../love/src/modules/filesystem/wrap_DroppedFile.h \
    ../love/src/modules/filesystem/wrap_File.h \
    ../love/src/modules/filesystem/wrap_FileData.h \
    ../love/src/modules/filesystem/wrap_Filesystem.h \
    ../love/src/modules/font/freetype/Font.h \
    ../love/src/modules/font/freetype/TrueTypeRasterizer.h \
    ../love/src/modules/font/BMFontRasterizer.h \
    ../love/src/modules/font/Font.h \
    ../love/src/modules/font/GlyphData.h \
    ../love/src/modules/font/ImageRasterizer.h \
    ../love/src/modules/font/Rasterizer.h \
    ../love/src/modules/font/TrueTypeRasterizer.h \
    ../love/src/modules/font/Vera.ttf.h \
    ../love/src/modules/font/wrap_Font.h \
    ../love/src/modules/font/wrap_GlyphData.h \
    ../love/src/modules/font/wrap_Rasterizer.h \
    ../love/src/modules/graphics/opengl/Buffer.h \
    ../love/src/modules/graphics/opengl/Canvas.h \
    ../love/src/modules/graphics/opengl/FenceSync.h \
    ../love/src/modules/graphics/opengl/Graphics.h \
    ../love/src/modules/graphics/opengl/Image.h \
    ../love/src/modules/graphics/opengl/OpenGL.h \
    ../love/src/modules/graphics/opengl/Shader.h \
    ../love/src/modules/graphics/opengl/ShaderStage.h \
    ../love/src/modules/graphics/opengl/StreamBuffer.h \
    ../love/src/modules/graphics/Buffer.h \
    ../love/src/modules/graphics/Canvas.h \
    ../love/src/modules/graphics/Deprecations.h \
    ../love/src/modules/graphics/depthstencil.h \
    ../love/src/modules/graphics/Drawable.h \
    ../love/src/modules/graphics/Font.h \
    ../love/src/modules/graphics/Graphics.h \
    ../love/src/modules/graphics/Image.h \
    ../love/src/modules/graphics/Mesh.h \
    ../love/src/modules/graphics/ParticleSystem.h \
    ../love/src/modules/graphics/Polyline.h \
    ../love/src/modules/graphics/Quad.h \
    ../love/src/modules/graphics/Resource.h \
    ../love/src/modules/graphics/Shader.h \
    ../love/src/modules/graphics/ShaderStage.h \
    ../love/src/modules/graphics/SpriteBatch.h \
    ../love/src/modules/graphics/StreamBuffer.h \
    ../love/src/modules/graphics/Text.h \
    ../love/src/modules/graphics/Texture.h \
    ../love/src/modules/graphics/vertex.h \
    ../love/src/modules/graphics/Video.h \
    ../love/src/modules/graphics/Volatile.h \
    ../love/src/modules/graphics/wrap_Canvas.h \
    ../love/src/modules/graphics/wrap_Font.h \
    ../love/src/modules/graphics/wrap_Graphics.h \
    ../love/src/modules/graphics/wrap_Image.h \
    ../love/src/modules/graphics/wrap_Mesh.h \
    ../love/src/modules/graphics/wrap_ParticleSystem.h \
    ../love/src/modules/graphics/wrap_Quad.h \
    ../love/src/modules/graphics/wrap_Shader.h \
    ../love/src/modules/graphics/wrap_SpriteBatch.h \
    ../love/src/modules/graphics/wrap_Text.h \
    ../love/src/modules/graphics/wrap_Texture.h \
    ../love/src/modules/graphics/wrap_Video.h \
    ../love/src/modules/image/magpie/ASTCHandler.h \
    ../love/src/modules/image/magpie/ddsHandler.h \
    ../love/src/modules/image/magpie/EXRHandler.h \
    ../love/src/modules/image/magpie/KTXHandler.h \
    ../love/src/modules/image/magpie/PKMHandler.h \
    ../love/src/modules/image/magpie/PNGHandler.h \
    ../love/src/modules/image/magpie/PVRHandler.h \
    ../love/src/modules/image/magpie/STBHandler.h \
    ../love/src/modules/image/CompressedImageData.h \
    ../love/src/modules/image/CompressedSlice.h \
    ../love/src/modules/image/FormatHandler.h \
    ../love/src/modules/image/Image.h \
    ../love/src/modules/image/ImageData.h \
    ../love/src/modules/image/ImageDataBase.h \
    ../love/src/modules/image/wrap_CompressedImageData.h \
    ../love/src/modules/image/wrap_Image.h \
    ../love/src/modules/image/wrap_ImageData.h \
    ../love/src/modules/joystick/sdl/Joystick.h \
    ../love/src/modules/joystick/sdl/JoystickModule.h \
    ../love/src/modules/joystick/Joystick.h \
    ../love/src/modules/joystick/JoystickModule.h \
    ../love/src/modules/joystick/wrap_Joystick.h \
    ../love/src/modules/joystick/wrap_JoystickModule.h \
    ../love/src/modules/keyboard/sdl/Keyboard.h \
    ../love/src/modules/keyboard/Keyboard.h \
    ../love/src/modules/keyboard/wrap_Keyboard.h \
    ../love/src/modules/love/love.h \
    ../love/src/modules/math/BezierCurve.h \
    ../love/src/modules/math/MathModule.h \
    ../love/src/modules/math/RandomGenerator.h \
    ../love/src/modules/math/Transform.h \
    ../love/src/modules/math/wrap_BezierCurve.h \
    ../love/src/modules/math/wrap_Math.h \
    ../love/src/modules/math/wrap_RandomGenerator.h \
    ../love/src/modules/math/wrap_Transform.h \
    ../love/src/modules/mouse/sdl/Cursor.h \
    ../love/src/modules/mouse/sdl/Mouse.h \
    ../love/src/modules/mouse/Cursor.h \
    ../love/src/modules/mouse/Mouse.h \
    ../love/src/modules/mouse/wrap_Cursor.h \
    ../love/src/modules/mouse/wrap_Mouse.h \
    ../love/src/modules/physics/box2d/Body.h \
    ../love/src/modules/physics/box2d/ChainShape.h \
    ../love/src/modules/physics/box2d/CircleShape.h \
    ../love/src/modules/physics/box2d/Contact.h \
    ../love/src/modules/physics/box2d/DistanceJoint.h \
    ../love/src/modules/physics/box2d/EdgeShape.h \
    ../love/src/modules/physics/box2d/Fixture.h \
    ../love/src/modules/physics/box2d/FrictionJoint.h \
    ../love/src/modules/physics/box2d/GearJoint.h \
    ../love/src/modules/physics/box2d/Joint.h \
    ../love/src/modules/physics/box2d/MotorJoint.h \
    ../love/src/modules/physics/box2d/MouseJoint.h \
    ../love/src/modules/physics/box2d/Physics.h \
    ../love/src/modules/physics/box2d/PolygonShape.h \
    ../love/src/modules/physics/box2d/PrismaticJoint.h \
    ../love/src/modules/physics/box2d/PulleyJoint.h \
    ../love/src/modules/physics/box2d/RevoluteJoint.h \
    ../love/src/modules/physics/box2d/RopeJoint.h \
    ../love/src/modules/physics/box2d/Shape.h \
    ../love/src/modules/physics/box2d/WeldJoint.h \
    ../love/src/modules/physics/box2d/WheelJoint.h \
    ../love/src/modules/physics/box2d/World.h \
    ../love/src/modules/physics/box2d/wrap_Body.h \
    ../love/src/modules/physics/box2d/wrap_ChainShape.h \
    ../love/src/modules/physics/box2d/wrap_CircleShape.h \
    ../love/src/modules/physics/box2d/wrap_Contact.h \
    ../love/src/modules/physics/box2d/wrap_DistanceJoint.h \
    ../love/src/modules/physics/box2d/wrap_EdgeShape.h \
    ../love/src/modules/physics/box2d/wrap_Fixture.h \
    ../love/src/modules/physics/box2d/wrap_FrictionJoint.h \
    ../love/src/modules/physics/box2d/wrap_GearJoint.h \
    ../love/src/modules/physics/box2d/wrap_Joint.h \
    ../love/src/modules/physics/box2d/wrap_MotorJoint.h \
    ../love/src/modules/physics/box2d/wrap_MouseJoint.h \
    ../love/src/modules/physics/box2d/wrap_Physics.h \
    ../love/src/modules/physics/box2d/wrap_PolygonShape.h \
    ../love/src/modules/physics/box2d/wrap_PrismaticJoint.h \
    ../love/src/modules/physics/box2d/wrap_PulleyJoint.h \
    ../love/src/modules/physics/box2d/wrap_RevoluteJoint.h \
    ../love/src/modules/physics/box2d/wrap_RopeJoint.h \
    ../love/src/modules/physics/box2d/wrap_Shape.h \
    ../love/src/modules/physics/box2d/wrap_WeldJoint.h \
    ../love/src/modules/physics/box2d/wrap_WheelJoint.h \
    ../love/src/modules/physics/box2d/wrap_World.h \
    ../love/src/modules/physics/Body.h \
    ../love/src/modules/physics/Joint.h \
    ../love/src/modules/physics/Shape.h \
    ../love/src/modules/sound/lullaby/CoreAudioDecoder.h \
    ../love/src/modules/sound/lullaby/FLACDecoder.h \
    ../love/src/modules/sound/lullaby/GmeDecoder.h \
    ../love/src/modules/sound/lullaby/ModPlugDecoder.h \
    ../love/src/modules/sound/lullaby/Mpg123Decoder.h \
    ../love/src/modules/sound/lullaby/Sound.h \
    ../love/src/modules/sound/lullaby/VorbisDecoder.h \
    ../love/src/modules/sound/lullaby/WaveDecoder.h \
    ../love/src/modules/sound/Decoder.h \
    ../love/src/modules/sound/Sound.h \
    ../love/src/modules/sound/SoundData.h \
    ../love/src/modules/sound/wrap_Decoder.h \
    ../love/src/modules/sound/wrap_Sound.h \
    ../love/src/modules/sound/wrap_SoundData.h \
    ../love/src/modules/system/sdl/System.h \
    ../love/src/modules/system/System.h \
    ../love/src/modules/system/wrap_System.h \
    ../love/src/modules/thread/sdl/Thread.h \
    ../love/src/modules/thread/sdl/threads.h \
    ../love/src/modules/thread/Channel.h \
    ../love/src/modules/thread/LuaThread.h \
    ../love/src/modules/thread/Thread.h \
    ../love/src/modules/thread/ThreadModule.h \
    ../love/src/modules/thread/threads.h \
    ../love/src/modules/thread/wrap_Channel.h \
    ../love/src/modules/thread/wrap_LuaThread.h \
    ../love/src/modules/thread/wrap_ThreadModule.h \
    ../love/src/modules/timer/Timer.h \
    ../love/src/modules/timer/wrap_Timer.h \
    ../love/src/modules/touch/sdl/Touch.h \
    ../love/src/modules/touch/Touch.h \
    ../love/src/modules/touch/wrap_Touch.h \
    ../love/src/modules/video/theora/OggDemuxer.h \
    ../love/src/modules/video/theora/TheoraVideoStream.h \
    ../love/src/modules/video/theora/Video.h \
    ../love/src/modules/video/Video.h \
    ../love/src/modules/video/VideoStream.h \
    ../love/src/modules/video/wrap_Video.h \
    ../love/src/modules/video/wrap_VideoStream.h \
    ../love/src/modules/window/sdl/Window.h \
    ../love/src/modules/window/Window.h \
    ../love/src/modules/window/wrap_Window.h

LIBS += -lGLEW -lglfw -lGL -lX11 -ldl -lSDL2 -lfreetype -llua -lopenal -lz -lmodplug -lvorbisfile -ltheoradec -logg -lmpg123 -lpthread


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

unix:!macx: LIBS += -L$$PWD/../love/src/.libs/ -llove

INCLUDEPATH += $$PWD/../love/src
DEPENDPATH += $$PWD/../love/src

#DISTFILES += \
#    ../love/src/modules/event/wrap_Event.lua \
#    ../love/src/modules/graphics/wrap_Graphics.lua \
#    ../love/src/modules/graphics/wrap_Video.lua \
#    ../love/src/modules/image/wrap_ImageData.lua \
#    ../love/src/modules/math/wrap_Math.lua \
#    ../love/src/modules/math/wrap_RandomGenerator.lua \
#    ../love/src/modules/sound/wrap_SoundData.lua
