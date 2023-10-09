import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ButtonGroup {
        id: childGroup
        exclusive: true
        buttons: col.children
    }

    Column {
        id: col
        CheckBox {
            checked: true
            /* 三种勾选状态 */
//            tristate: true
            text: qsTr("First")
        }
        CheckBox {
            checked: true
//            tristate: true
            text: qsTr("second")
        }
        CheckBox {
            checked: true
//            tristate: true
            text: qsTr("Third")
        }
    }

    Column {
        x:200
        ButtonGroup {
            id: childGroup1
            exclusive: false
            checkState: parentBox.checkState
        }

        CheckBox {
            id: parentBox
            text: qsTr("All")
            checkState: childGroup1.checkState
        }

        CheckBox {
            checked: true
            text: qsTr("Child 1")
//            leftPadding: indicator.width
            ButtonGroup.group: childGroup1
        }

        CheckBox {
            text: qsTr("Child 2")
//            leftPadding: indicator.width
            ButtonGroup.group: childGroup1
        }
    }
}
