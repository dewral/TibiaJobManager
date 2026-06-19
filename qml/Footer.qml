import QtQuick 2.15

Rectangle {
    id: footer

    height: 35

    anchors {
        left: parent.left
        right: parent.right
        bottom: parent.bottom

        leftMargin: 20
        rightMargin: 20
        bottomMargin: 20
    }

    color: "transparent"

    Rectangle {
        id: addButton

        width: 200
        height: 35

        anchors {
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
        }

        color: "transparent"

        BorderImage {
            anchors.fill: parent
            source: "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/button.png"
            smooth: false
            border.left: 2
            border.right: 2
            border.top: 2
            border.bottom: 2
        }

        Text {
            anchors.centerIn: parent

            text: "Add Timer"
            color: "#c0c0c0"
            font.bold: true
        }

        MouseArea {
            anchors.fill: parent

            onClicked: {
                timerModel.append({
                    "name": "New Job",
                    "status": "Paused",
                    "time": "00:00:00"
                })
            }
        }
    }
}
