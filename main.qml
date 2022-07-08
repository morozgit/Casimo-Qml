import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window
{
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Casino")
    color: "#9f680a"
    Image {
        id: image_main_table
        source: "image/paper.jpg"
        anchors.fill: parent
        Text {
            id: root_text
            text: qsTr("Choice the game")
            color: "black"
            anchors.horizontalCenter: image_main_table.horizontalCenter
            anchors.topMargin: 100
            font{

                pointSize: Math.min(root.width / 30,root.height/10)
            }


        }
    }
    GameButton
    {
        id:button_roulette
        width: root.width / 4
        height: root.height / 6
        operation: "Roulette"
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: root.width / 10

    }

    GameButton
    {
        id:slot_machine
        width: root.width / 4
        height: root.height / 6
        operation: "Slot Machine"
//        anchors.top: parent.top
//        anchors.topMargin: root.height / 10
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: button_roulette.right
        anchors.leftMargin: root.width / 4
    }

}

