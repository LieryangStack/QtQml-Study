import QtQuick 2.12
import QtQuick.Window 2.12
import MyObj 1.0
import QtQuick.Controls.Material 2.3

Window {
    id: window
    visible: true
    /* 属性赋值，具备动态绑定 */
    property int value: width
    objectName: "window"
    width: WIDTH
    height: 480
    title: qsTr("Hello World")

    signal qmSig (int v, string s)

    function qmSlot (i, s) {
        console.log("qml", i, s)
    }

    onWidthChanged: {
        console.log(value)
    }

    MyRectangle {
        Component.onCompleted: {
            console.log(attr.testValue)
        }
    }

    Button {
        id: btn
        objectName: "btn"
        x: 200; y: 200
        onClicked: {
            myobj.fun()
            //qmSig(10, "zhangsan")
        }
    }

    MyObject {
        id: myobj
        iValue: 20
        sString: "zhangsan"

        Component.onCompleted: {
            console.log(iValue + " " + sString)
            fun()
        }
    }


//    Connections {
//        target: window
//        function onQmsig(i, s) {
//            myobj.cppSlot(i, s)
//        }
//    }

//    Component.onCompleted: {
//        qmSig.connect(myobj.cppSlot())
//    }
}
