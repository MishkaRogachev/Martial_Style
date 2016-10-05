import QtQuick 2.6
import QtQuick.Controls 2.0

import "./"

Slider {
    id: control

    implicitHeight: palette.controlBaseSize

    background: Rectangle {
        anchors.verticalCenter: parent.verticalCenter
        color: palette.sunkenColor
        width: control.availableWidth
        implicitWidth: palette.controlBaseWidth
        height: control.height / 4
        radius: height / 2

        Rectangle {
            width: control.visualPosition * parent.width
            height: parent.height
            color: palette.highlightColor
            radius: height / 2
        }
    }

    handle: Rectangle {
        x: control.visualPosition * (control.availableWidth - width)
        anchors.verticalCenter: parent.verticalCenter
        implicitWidth: control.pressed ? control.height/ 1.5 :
                                         control.height / 2
        implicitHeight: implicitWidth
        radius: width / 2
        color: palette.highlightColor
    }
}
