import QtQuick 2.0

Rectangle {
    id:root
    color: mouseArea.containsPress ? "#d98345"  : "#d983e4"
    border.color: "#d6a16c"
    border.width: 7
    radius: 3
     property alias operation: button_text.text
    Image {
        id: image_main_table
        source: "image/paper_button.png"
        anchors.fill: parent
    }

    Text {
        id: button_text
        text: qsTr("")
        anchors.centerIn: root
        font{
            pointSize: Math.min(root.width,root.height)/6
        }
        MouseArea
        {
            id:mouseArea
            anchors.fill: parent
                 onClicked:
                 {
                    console.log("push")

                 }
        }

    }
}
