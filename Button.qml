import QtQuick 2.6
import QtQuick.Controls 2.0

import "./"

Button {
    id: control

    property alias iconSource: image.source

    font.pointSize: 11

    background: Rectangle {
        id: backgroundRect
        implicitWidth: palette.controlBaseSize
        implicitHeight: implicitWidth
        color: {
            if (!enabled) return palette.disabledColor;
            return control.pressed || control.checked ?
                        palette.highlightColor : palette.raisedColor
        }
    }

    contentItem: Item {
        implicitWidth: row.width
        implicitHeight: row.height

        Row {
            id: row
            anchors.centerIn: parent
            height: parent.availableHeight
            spacing: 5

            Image {
                id: image
                anchors.verticalCenter: parent.verticalCenter
            }

            Label {
                font: control.font
                text: control.text
                color: control.pressed || control.checked ?
                           palette.highlightTextColor: palette.textColor
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }
}
