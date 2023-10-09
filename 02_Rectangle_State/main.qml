import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: root
        states: [
            State {
                name: "normal"
                PropertyChanges {
                    target: root; color: "black"; width: 100; height: 50
                }
            },
            State {
                name: "red_color"
                PropertyChanges {
                    target: root; color: "red"; width: 100; height: 80
                }
            },
            State {
                name: "blue_color"
                PropertyChanges {
                    target: root; color: "blue";width: 100; height: 50
                }
            }
        ]
        state: "normal"
        MouseArea {
            anchors.fill: parent
            onPressed: {
                root.state = "red_color"
            }
            onReleased: {
                root.state = "blue_color"
            }
        }
    }


    Rectangle {
        id: flashingblob
        x: 200; y: 200
        width: 75; height: 45
        color: "blue"
        opacity: 1.0

        MouseArea {
            anchors.fill: parent
            onClicked: {
                animateColor.start()
                animateOpacity.start()
                animateWidth.start()
            }
        }

        PropertyAnimation {
            id: animateColor
            target: flashingblob
            properties: "color"
            to: "green"
            duration: 2000
        }
        NumberAnimation {
            id: animateOpacity
            target: flashingblob
            properties: "opacity"
            from: 0.0
            to: 1.0
            duration: 2000
        }
        NumberAnimation {
            id: animateWidth
            target: flashingblob
            properties: "width"
            from: 75
            to: 200
            duration: 3000;
        }
    }

    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"

        SequentialAnimation on color {
            ColorAnimation {
                to: "yellow"
                duration: 1000
            }
            ColorAnimation {
                to: "blue"
                duration: 1000
            }
        }

        /* 修改当前控件的位置 */
        PropertyAnimation on x {
            to: 100
            duration: 1000
        }
        PropertyAnimation on y {
            to: 100
            duration: 1000
        }
//        PropertyAnimation on color {
//            to: "yellow"
//            duration: 1000
//        }
    }

    Rectangle {
        x: 300; y: 300
        width: 75; height: 75
        id: button
        color: "blue"
        state: "RELEASED"

        MouseArea {
            anchors.fill: parent
            onPressed: button.state = "PRESSED"
            onReleased: button.state= "RELEASED"
        }

        states: [
            State {
                name: "PRESSED"
                PropertyChanges {
                    target: button; color: "lightblue"
                }
            },
            State {
                name: "RELEASED"
                PropertyChanges {
                    target: button; color: "lightsteelblue"
                }
            }
        ]

        transitions: [
            Transition {
                from: "PRESSED"
                to: "RELEASED"
                ColorAnimation { target: button; duration: 1000}
            },
            Transition {
                from: "RELEASED"
                to: "PRESSED"
                ColorAnimation { target: button; duration: 1000}
            }
        ]
    }
}
