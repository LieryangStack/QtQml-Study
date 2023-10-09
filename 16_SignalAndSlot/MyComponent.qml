import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3


Rectangle {
    y: 100
    width: 400
    height: 300
    border.color: "black"
    property Component com1
    property Component com2

    Loader {
        id: loader1
        sourceComponent: com1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.right: parent.right
        anchors.rightMargin: 20

        Connections {
            target: loader1.item
            function onBtnSig (v) {
                console.log("com1 " + v)
            }
        }
    }

    Loader {
        id: loader2
        sourceComponent: com2
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.right: parent.right
        anchors.rightMargin: 220

        Connections {
            target: loader2.item
            /* 忽略未知信号 */
            ignoreUnknownSignals: true
            function onBtnSig (v) {
                console.log("com2 " + v)
            }
        }
    }
}
