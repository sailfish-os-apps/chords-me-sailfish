import QtQuick 2.0
import Sailfish.Silica 1.0
import "lyrics-chords-editor"

ApplicationWindow {
    allowedOrientations: Orientation.All;
    cover: Component {
        CoverBackground {
            Label {
                text: qsTr ("LyricsChords'me");
                anchors.centerIn: parent;
            }
        }
    }
    initialPage: Component {
        Page {
            allowedOrientations: Orientation.All;

            LyricsChordsEditor {
                anchors.fill: parent;
            }
        }
    }
}
