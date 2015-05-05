TARGET = harbour-lyricschords

QT += core gui quick qml network svg

CONFIG += sailfishapp

INCLUDEPATH += \
    $$PWD/lyrics-chords-editor \
    $$PWD/lyrics-chords-editor/libQtQmlTricks/include

SOURCES += \
    $$PWD/harbour-lyricschords.cpp \
    $$PWD/lyrics-chords-editor/SharedObject.cpp \
    $$PWD/lyrics-chords-editor/libQtQmlTricks/src/qqmlhelpers.cpp \
    $$PWD/lyrics-chords-editor/libQtQmlTricks/src/qqmlobjectlistmodel.cpp \
    $$PWD/lyrics-chords-editor/libQtQmlTricks/src/qqmlsvgiconhelper.cpp \
    lyrics-chords-editor/libQtQmlTricks/src/qquickpolygon.cpp \
    lyrics-chords-editor/libQtQmlTricks/src/qqmlvariantlistmodel.cpp

HEADERS += \
    $$PWD/lyrics-chords-editor/SharedObject.h \
    $$PWD/lyrics-chords-editor/libQtQmlTricks/src/qqmlhelpers.h \
    $$PWD/lyrics-chords-editor/libQtQmlTricks/src/qqmlmodels.h \
    $$PWD/lyrics-chords-editor/libQtQmlTricks/src/qqmlobjectlistmodel_p.h \
    $$PWD/lyrics-chords-editor/libQtQmlTricks/src/qqmlobjectlistmodel.h \
    $$PWD/lyrics-chords-editor/libQtQmlTricks/src/qqmlsvgiconhelper.h \
    lyrics-chords-editor/libQtQmlTricks/src/qquickpolygon.h \
    lyrics-chords-editor/libQtQmlTricks/src/qtcobs.h \
    lyrics-chords-editor/libQtQmlTricks/src/qqmlvariantlistmodel_p.h \
    lyrics-chords-editor/libQtQmlTricks/src/qqmlvariantlistmodel.h

RESOURCES += \
    $$PWD/harbour-lyricschords.qrc \
    components.qrc

OTHER_FILES += \
    $$PWD/rpm/harbour-lyricschords.changes.in \
    $$PWD/rpm/harbour-lyricschords.yaml \
    $$PWD/harbour-lyricschords.desktop

