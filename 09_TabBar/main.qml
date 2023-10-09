import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    TabBar {
        id: bar
        width: parent.width
        TabButton {
            text: qsTr("Home")
        }
        TabButton {
            text: qsTr("Discover")
        }
        TabButton {
            text: qsTr("Activity")
        }
    }

    StackLayout {
          width: parent.width
          currentIndex: bar.currentIndex
          Item {
              id: homeTab
              RoundButton {
                  y: 60
                  text: "\u2713" // Unicode Character 'CHECK MARK'
                  onClicked: textArea.readOnly = true
              }
          }
          Item {
              id: discoverTab
              Button {
                y: 60
                text: "two"
              }
          }
          Item {
              id: activityTab
              Button {
                  y: 60
                  text: "three"
                  contentItem: Rectangle {
                      Text {
                          id: txt
                          text: "control"
                      }
                      Image {
                          id: img
                          width: 50; height: 50
                          source:  "./image/rocket-lunch.png"
                      }
                  }
              }
          }
      }
}
