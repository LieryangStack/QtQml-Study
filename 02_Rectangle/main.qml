import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: rect1
        x: 100
        y: 100
        z: 1 /*控制控件的前后方向*/
        width: 100
        height: 50
        color: "blue"
        /* 有焦点就可以使用键盘Keys.onReturnPressed */
        focus: true

        MouseArea {
            /* 填充满父控件 */
            anchors.fill: parent
            onClicked: {
                console.log("on clicked");
            }
        }

        Keys.onReturnPressed: {
            console.log("on return pressed");
        }
    }

    Rectangle {
        id: rect2
        //anchors.fill: parent
        anchors.left: rect1.right
        anchors.top: rect1.top
        anchors.leftMargin: 20

        width: 100
        height: 50
        color: "black"
    }

    Rectangle {
        id: rect3
        width: 30
        height: 70

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter:parent.horizontalCenter

        color: "red"
        /* 旋转 */
        rotation: 45
        /* 放缩 */
        scale: 2
        /* 抗锯齿 */
        antialiasing: true
        /* 边框 */
        border.width: 2
        border.color: "green"
        /* 边角 */
        radius: 5
    }

    Rectangle {
        y: 100; width: 80; height: 40
        radius: 10
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lightsteelblue" }
            GradientStop { position: 1.0; color: "blue" }
      }
    }

    Rectangle {
        id: borderRect
        x: 350
        y: 350
        width: 200
        height: 100
        color: "black"
        Rectangle {
            id: innerRect
            anchors.fill: parent
            anchors.topMargin: 0
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 5
            color: "green"
        }

    }



}
