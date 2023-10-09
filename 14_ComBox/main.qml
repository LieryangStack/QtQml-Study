import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

//    ComboBox {
//        editable: true
//        model: ListModel {
//            id: model
//            ListElement { text: "Banana" }
//            ListElement { text: "Apple" }
//            ListElement { text: "Coconut" }
//        }
//        onAccepted: {
//            if (find(editText) === -1)
//                model.append({text: editText})
//        }
//    }
    MyComboBox {

    }
}
