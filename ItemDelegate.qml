import QtQuick 2.6
import QtQuick.Controls 2.0

import "./"

ItemDelegate {
    id: control

    font.pointSize: palette.fontSize

    contentItem: Text {
        text: control.text
        verticalAlignment: Text.AlignVCenter
        font: control.font
        color: control.highlighted ? palette.highlightColor : palette.textColor
    }

    background: Rectangle {
        implicitHeight: palette.controlBaseSize
        color: palette.sunkenColor
    }
}
