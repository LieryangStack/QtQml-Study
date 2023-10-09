import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Repeater {
        /* 模型 数字的话 表示有几个模型/控件 */
        //model: 3
        model: ["Button", "Rectangle", "MouseArea"]
        Button {
            y: index * 50
            width: 150; height: 40
            /* 使用model里面的数据 */
            text: modelData + " " + index
        }
    }
}
