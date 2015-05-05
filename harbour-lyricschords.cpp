
#include <QGuiApplication>
#include <QtQuick>
#include <QObject>
#include <QDir>

#include <sailfishapp.h>

#include <QtQmlTricks>

#include "SharedObject.h"

int main (int argc, char * argv []) {
    QGuiApplication * app = SailfishApp::application (argc, argv);
    QQuickView * view = SailfishApp::createView ();
    QQmlSvgIconHelper::setBasePath (":/lyrics-chords-editor/icons");
    const char * uri = "QtLyricsChords";  // @uri QtLyricsChords
    const int    maj = 1;
    const int    min = 0;
    registerQtQmlTricksModule (view->engine());
    qmlRegisterType<SongItem>  (uri, maj, min, "SongItem");
    qmlRegisterType<GroupItem> (uri, maj, min, "GroupItem");
    qmlRegisterType<LineItem>  (uri, maj, min, "LineItem");
    qmlRegisterType<ChordItem> (uri, maj, min, "ChordItem");
    qmlRegisterUncreatableType<ChordKey>     (uri, maj, min, "ChordKey",     "!!!");
    qmlRegisterUncreatableType<ChordVariant> (uri, maj, min, "ChordVariant", "!!!");
    qmlRegisterUncreatableType<ChordExtra>   (uri, maj, min, "ChordExtra",   "!!!");
    view->engine()->addImportPath ("qrc:///lyrics-chords-editor/libQtQmlTricks/import/");
    view->engine()->rootContext ()->setContextProperty ("Shared", new SharedObject (app));
    view->setSource (QUrl ("qrc:///harbour-lyricschords.qml"));
    view->show ();
    return app->exec ();
}

