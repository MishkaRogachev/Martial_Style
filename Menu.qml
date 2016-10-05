import QtQuick 2.6
import QtQuick.Controls 2.0

import "./"

Menu {
    id: control

    background: Rectangle {
        implicitWidth: 128
        implicitHeight: 128
        color: palette.foregroundColor
        border.color: control.focus ? palette.highlightColor : "transparent"
    }
}
