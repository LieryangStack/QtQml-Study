import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Button {
        id: btn1
        width: 100
        height: 50
        text: "PushButton1"
        checkable: true
        /* 同一类只允许一个按钮被选中 */
        autoExclusive: true;
    }
    Button {
        id: btn2
        y: 60
        width: 100
        height: 50
        text: "PushButton2"
        checkable: true
        autoExclusive: true;
    }
    Button {
        id: btn3
        y: 120
        width: 100
        height: 50
        text: "PushButton3"
        checkable: true
        autoExclusive: true;
    }
}
