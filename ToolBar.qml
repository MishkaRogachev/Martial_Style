import QtQuick 2.6
import QtQuick.Controls 2.0

import "./"

ToolBar {
    id: toolBar

    background: Rectangle {
        color: palette.backgoundRaisedColor

        Rectangle {
            width: parent.width
            height: 1
            anchors.bottom: parent.bottom
            color: "transparent"
            border.color: palette.highlightColor
        }
    }
}
