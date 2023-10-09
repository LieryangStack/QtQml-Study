import QtQuick 2.0

Rectangle {
    id: borderRect
    property int myTopMargin: 0
    /* 浮点型 */
    property real myReal: 0.0
    property string myString: "black"
    property color myColor: "black"

    /* required要求必须先赋值  */
    property Component myComponent
    property Rectangle myRec

//    /* 原始名字 */
//    property alias newInnerRect: innerRect

    width: 100
    height: 100
    color: myString
    Rectangle {
//        Loader {
//            id: loader
//            sourceComponent: myComponent
//        }
        id: newInnerRect
        color: "blue"
        anchors.fill: parent
        anchors.topMargin: myTopMargin
    }
}
