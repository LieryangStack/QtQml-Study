import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Grid {
        id: grid
        x: 300; y: 100
        width: 15; height: 200
        columns: 3

        Repeater {
            model: grid.width / 5 * grid.height/5
            Rectangle {
                width: 5
                height: 5
                color: index % 2 ? "white" : "black"
            }
        }
    }
}
