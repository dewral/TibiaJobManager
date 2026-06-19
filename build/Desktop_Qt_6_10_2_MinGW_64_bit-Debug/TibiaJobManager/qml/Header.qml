import QtQuick 2.15

Row {

    anchors {
        top: topBar1.bottom
        topMargin: 10

        left: parent.left
        leftMargin: 20
    }
    spacing: 0


    Text {
            width: 180
            text: "Name"
            color: "#c0c0c0"
            font.bold: true
        }
    Text {
            width: 180
            text: "Status"
            color: "#c0c0c0"
            font.bold: true
        }
    Text {
            width: 180
            text: "Timer"
            color: "#c0c0c0"
            font.bold: true
        }
    }
