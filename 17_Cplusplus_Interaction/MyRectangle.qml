import QtQuick 2.0
import QtQuick.Controls.Material 2.3

Rectangle {
    width: 200
    height: 100

    color: "black"

    property alias attr: attributes

    /* 把属性私有化 */
    QtObject {
        id: attributes
        property int testValue: 0
    }

    Component.onCompleted: {
        console.log(attributes.testValue)
    }
}
