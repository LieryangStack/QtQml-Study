import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Component {
        id: com
        Button {
            width: 200
            height: 50
        }
    }

    MyRe {
        id:myRe
    }
}
