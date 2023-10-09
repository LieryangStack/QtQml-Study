import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Button {
        text: "Open"
        onClicked: popup.open()
    }

    /**
     * Popup 两个列外
     * 1.不会跟随父控件的visible隐藏而隐藏
     * 2.z无论设置多少，总是处于置顶状态
     */
    Popup { /* 类似于Rectangle */
        id: popup
        x: 100
        y: 100
        width: 200
        height: 300
        /* 是否是模态对话框 */
        modal: true
        focus: true
        //visible: true /* 默认是false */
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        enter: Transition {
            NumberAnimation {
                property: "opacity"
                from: 0.0; to: 1.0
                duration: 1000
            }
        }
        exit: Transition {
            NumberAnimation {
                property: "opacity"
                from: 1.0; to: 0.0
                duration: 500
            }
        }

        contentItem: Rectangle {
            anchors.fill: parent
            color: "lightblue"
            Text {
                id: text
                text: qsTr("Message Box Area!!!!!")
                anchors.fill: parent
                font.pixelSize: 26
                wrapMode: Text.WordWrap
            }

            Button {
                text: qsTr("Close")
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.bottomMargin: 5
                anchors.rightMargin: 5
                onClicked: {
                    popup.close()
                }
            }

            Button {
                text: qsTr("Ok")
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.bottomMargin: 5
                anchors.rightMargin: 100
                onClicked: {
                    popup.close()
                }
            }
        }
    }

//    MyPopup {

//    }
}
