import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: rec
        width: 50; height: 50
        anchors.centerIn: parent
        border.color: "black"
        Text {
            id: txt
            text: qsTr("text121212121212131213121312")
            /* 如果文本内容超过父控件范围，则省略内容中间部分 */
            elide: Text.ElideMiddle
            anchors.fill: parent
            Component.onCompleted: {
                console.log (contentWidth)
                console.log (contentHeight)
            }
        }
    }

    Text {
         x:400
         textFormat: Text.RichText
         text: "See the <a href=\"http://qt-project.org\">Qt Project website</a>."
         onLinkActivated: console.log(link + " link activated")
     }

    Text {
        id: txt1
        width: 50
        text: qsTr("text1 textFormat: Text.PlainText")
        wrapMode: Text.WordWrap /* 换行模式 */
        font.bold: true /*粗体*/
        font.pixelSize: 36 /* 字体大小（按像素为单位） */
        font.underline: true /* 下划线 */
        lineHeight: 2 /* 设定行宽度 */
    }

    Column {
        y: 300
        Text {
            /* 普通文本 */
            font.pointSize: 24
            text: "<b>Hello</b> <i>World!</i>"
        }
        Text {
            font.pointSize: 24
            /* 富文本 */
            textFormat: Text.RichText
            text: "<b>Hello</b> <i>World!</i>"
        }
        Text {
            font.pointSize: 24
            /* 纯文本 */
            textFormat: Text.PlainText
            text: "<b>Hello</b> <i>World!</i>"
        }
        Text {
            /* Markdown 格式 */
            font.pointSize: 24
            textFormat: Text.MarkdownText
            text: "**Hello** *World!*"
        }
    }



}
