import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Repeater {
        id: rep
        model: 3
        Button {
            id: btn
            y: index * 60
            text: "btn" + index
        }
    }

    Column {
        id: col
        x: 400
        spacing: 20
        Button {
            id: btn3
            text: "btn3"
        }
    }

    Button {
        id: btn2
        x: 200
        text: "clicked!"
        onClicked: {
            /* Column里面的可以直接通过id访问 */
            console.log (btn3.text)
            /* Repeater里面的不能直接通过id访问 */
            for (var i = 0; i < rep.count; i++) {
                console.log (rep.itemAt(i).text)
            }
        }
    }
}
