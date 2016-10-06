import QtQuick 2.6
import QtQuick.Controls 2.0

import "./"

ComboBox {
    id: control

    font.pointSize: palette.fontSize

    delegate: ItemDelegate {
        width: control.width
        text: modelData
        highlighted: control.highlightedIndex === index
    }

    background: Rectangle {
        implicitWidth: palette.controlBaseWidth
        implicitHeight: palette.controlBaseSize
        color: control.enabled ? palette.sunkenColor : palette.disabledColor
        border.color: control.focus ? palette.highlightColor : "transparent"
    }

    indicator: Canvas {
        visible: control.focus
        x: control.width - width
        y: control.height - height
        width: palette.controlBaseSize / 2
        height: width
        contextType: "2d"

        onPaint: {
            context.reset();
            context.moveTo(width, 0);
            context.lineTo(width, height);
            context.lineTo(0, height);
            context.closePath();
            context.fillStyle = palette.selectionColor;
            context.fill();
        }
    }

    contentItem: Text {
        text: control.displayText
        verticalAlignment: Text.AlignVCenter
        font: control.font
        color: palette.textColor
    }
}