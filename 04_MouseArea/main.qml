import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: win
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    MouseArea {
        id: mouseArea
        width: 200
        height: 200
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        hoverEnabled: true
        Rectangle {
            id: rect
            anchors.fill: parent
            color: "black"
        }
        onClicked: {
            console.log("onClicked")
        }
        onPressed: {
            var ret = pressedButtons & Qt.LeftButton
            var ret1 = pressedButtons & Qt.RightButton
            console.log("onPressed", ret ? "left" : ret1 ? "right" : "other")
        }
        onReleased: {
            console.log("onReleased")
        }
        onContainsMouseChanged: {
            console.log ("onContainsMouseChanged", containsMouse)
            if (containsMouse) rect.color = "blue"
            else rect.color = "black"
        }
    }

    Rectangle {
        id: rect1
        y: 400
        width: 100; height: 50
        color: "black"
        opacity: (600 - rect1.x) / 600

        MouseArea {
            anchors.fill: parent
            drag.target: rect1
            drag.axis: Drag.XAxis | Drag.YAxis
            drag.minimumX: 0
            drag.maximumX: win.width - rect1.width
            drag.minimumY: 0
            drag.maximumY: win.height - rect1.height
        }
    }
}
