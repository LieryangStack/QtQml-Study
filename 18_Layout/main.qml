import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        Repeater {
            id: rep
            model: ListModel {

            }

            Button {
                width: 100
                height: 50
                text: name
            }
        }
        populate: Transition {
            NumberAnimation {
                properties: "x, y";
                from: 200;
                duration: 500
            }
        }
    }

    Button {
        anchors.bottom: parent.bottom
        anchors.left: parent.left

        onClicked: {
            rep.model.insert(0, {"name": rep.model.count})
        }
    }
}
