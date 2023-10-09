import QtQuick 2.0
import QtQuick.Controls.Material 2.3

Popup {
    id: popup
    x: 200
    y: 100
    width: 200
    height: 300
    visible: true
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
}

