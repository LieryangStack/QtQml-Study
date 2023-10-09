import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    DelayButton {
        width: 150
        height: 50
        delay: 3000
        onProgressChanged: {
            console.log("delay = ", progress)
        }
    }

    ColumnLayout {
        x: 200
         RadioButton {
             checked: true
             text: qsTr("First")
         }
         RadioButton {
             text: qsTr("Second")
         }
         RadioButton {
             text: qsTr("Third")
         }
    }

    /* 为了给Switch实现排它功能 */
//    ButtonGroup {
//        id:btngrp
//        exclusive: true
//        buttons: col.children
//    }


    ColumnLayout {
        id: col
        x: 400
        Switch {
            text: qsTr("Wi-Fi")
            LayoutMirroring.enabled: true
            onPositionChanged: {
                console.log(position)
            }
        }
        Switch {
            text: qsTr("Bluetooth")
        }
    }
}
