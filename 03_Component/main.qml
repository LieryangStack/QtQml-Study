import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3

Window {
    visible: true
    width: 840
    height: 680
    title: qsTr("Hello World")
    color: "white"

    Component.onCompleted: {
        console.log ("onCompleted",  width, height, color)
    }
    Component.onDestruction: {
        console.log ("onDestruction",  width, height, color)
    }

    Component {
        id: com
        Rectangle {
            id: rect
            width: 200
            height: 100
            color: "black"
        }
    }

    Loader {
        id: loader
        sourceComponent: com;
        asynchronous: true
        onStatusChanged: {
            console.log ("status: ", status)
        }
    }

    Button {
        width: 50
        height: 50
        x: 200
        onClicked: {
            loader.item.width = 50
            loader.item.height = 50
            loader.item.color = "red"
            //loader.sourceComponent = null

            loader1.item.paused = !loader1.item.paused
        }
    }

    Component {
        id: com1
//        Image {
//            x:200; y: 200
//            id: img
//            source: "/image/rocket-lunch.png"
//            width: 200
//            height: 200
//        }
        AnimatedImage {
            x:500; y: 200
            id: gif
            source: "/image/wired-flat-18-location-pin.gif"
            speed: 5
        }
    }

    Loader {
        id: loader1
        sourceComponent: com1;
        asynchronous: true
        onStatusChanged: {
            console.log ("status: ", status)
        }
    }
}
