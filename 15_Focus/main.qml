import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Button {
        id: btn
        width: 100
        height: 50
        background: Rectangle {
            anchors.fill: parent
            border.color: btn.focus ? "lightblue" : "black"
        }
        onFocusChanged: {
            console.log ("focus: ", focus)
        }
        Component.onCompleted: {
            console.log ("focusPolicy: ", focusPolicy)
            console.log ("Qt.StrongFocus: ", Qt.StrongFocus)
        }
    }

    FocusScope {
        x: 200
        id: rect1
        width: 300
        height: 200
        focus: true
        Text {
            focus: true
            id: txt1
            text: qsTr(" text is " + txt1.focus + "\n txt1.activeFocus is " + txt1.activeFocus)
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                txt1.forceActiveFocus()
            }
        }
    }

    /*
     * focus 可以同时都是true
     * activeFocus 只能有一个
     */

    FocusScope {
        x: 200; y: 200
        id: rect2
        width: 300
        height: 200
        focus: true
        Text {
            focus: true
            id: txt2
            text: qsTr(" text is " + txt2.focus + "\n txt2.activeFocus is " + txt2.activeFocus)
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                txt2.forceActiveFocus()
            }
        }
    }
}
