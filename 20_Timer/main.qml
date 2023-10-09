import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property int time: 0

    Timer {
        id: timer
        interval: 1000
        /* 计时器不断触发 */
        repeat: true
        //running: true
        onTriggered: {
            time += 1
        }
    }

    Button {
        id: btn
        text: "Start Time"
        onClicked: {
            timer.running = true
        }
    }

    Text {
        id: txt
        text: time
        font.pixelSize: 68
        anchors.centerIn: parent
    }
}
