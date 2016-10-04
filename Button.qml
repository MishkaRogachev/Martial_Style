import QtQuick 2.6
import QtQuick.Controls 2.0

Button {
    id: button

    property Palette palette: Palette {}

    property alias iconSource: image.source

    background: Rectangle {
        id: backgroundRect
        implicitWidth: 32
        implicitHeight: 32
        color: button.pressed || button.checked ?
                   palette.highlightColor : palette.backgoundRaisedColor
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
                font: button.font
                text: button.text
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }
}
