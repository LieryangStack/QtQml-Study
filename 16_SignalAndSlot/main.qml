import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    signal testSing (string s, int value)

    /* 定义一个函数 */
    function func (ss, ii) {
        console.log (ss, ii)
    }

    Button {
        id: btn
        width: 100
        height: 50
        text: qsTr("Button")
        onClicked: {
            testSing("button clicked", 0)
        }
    }

    /* 方法一：信号连接 */
//    Component.onCompleted: {
//        testSing.connect (func)
//    }

    /* 方法二： */
    Connections {
        target: window
        /* on + 信号名（信号名开头要大写） */
        function onTestSing (ss, ii) {
            console.log (ss, ii)
        }
    }

    Component {
        id: com
        Button {
            text: "Button Component"
            signal btnSig (int value)
            onClicked: {
                btnSig(10)
            }
        }
    }

    MyComponent {
        com1: com
        com2: com
    }
}
