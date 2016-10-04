import QtQuick 2.6
import QtQuick.Controls 2.0

import "./"

Slider {
    id: control
    implicitHeight: palette.controlBaseSize

    handle: Rectangle {
        x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: control.pressed ? palette.controlBaseSize :
                                         palette.controlBaseSize / 2
        implicitHeight: implicitWidth
        radius: width / 2
        color: palette.highlightColor
    }
}
