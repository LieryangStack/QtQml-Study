import QtQuick 2.12
import QtQuick.Controls.Material 2.3

ComboBox {
    id: control
    model: ["First", "Second", "Third"]

    /* 针对model中 每一个项的具体绘制 */
    delegate: ItemDelegate {
        width: control.width
        contentItem: Text {
            text: modelData
            /* 每一项的颜色 */
            color: index % 2 ? "red" : "blue"
            font: control.font
            elide: Text.ElideRight
            verticalAlignment: Text.AlignVCenter
        }
        highlighted: control.highlightedIndex === index
    }

//    /* 控件右侧的 */
//    indicator: Canvas {
//        id: canvas
//        x: control.width - width - control.rightPadding
//        y: control.topPadding + (control.availableHeight - height) / 2
//        width: 12
//        height: 8
//        contextType: "2d"

//        Connections {
//            target: control
//            onPressedChanged: canvas.requestPaint()
//        }

//        onPaint: {
//            context.reset();
//            context.moveTo(0, 0);
//            context.lineTo(width, 0);
//            context.lineTo(width / 2, height);
//            context.closePath();
//            context.fillStyle = control.pressed ? "#17a81a" : "#21be2b";
//            context.fill();
//        }
//    }

    /* 当前控件的显示内容 */
    contentItem: Text {
        leftPadding: 0
        rightPadding: control.indicator.width + control.spacing

        text: control.displayText
        font: control.font
        color: control.pressed ? "#17a81a" : "#21be2b"
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    /* ComoBox具体显示的背景颜色 */
    background: Rectangle {
        implicitWidth: 120
        implicitHeight: 40
        border.color: control.pressed ? "#17a81a" : "#21be2b"
        border.width: control.visualFocus ? 2 : 1
        radius: 2
    }

    /* 和delegate的区别就是 delegate绘制单个项的 而popup绘制整个下拉控制项 */
    popup: Popup {
        y: control.height - 1
        width: control.width
        implicitHeight: contentItem.implicitHeight
        padding: 1

        contentItem: ListView {
            clip: true
            implicitHeight: contentHeight
            model: control.popup.visible ? control.delegateModel : null
            currentIndex: control.highlightedIndex

            //ScrollIndicator.vertical: ScrollIndicator { }
            ScrollBar.vertical: ScrollBar {
                policy: ScrollBar.AlwaysOn
            }
        }

        background: Rectangle {
            border.color: "#21be2b"
            radius: 2
        }
    }
}
