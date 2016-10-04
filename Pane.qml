import QtQuick 2.6
import QtQuick.Controls 2.0

Pane {
    property Palette palette: Palette {}

    background: Rectangle {
        color: palette.backgoundColor
    }
}
