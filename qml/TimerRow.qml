import QtQuick 2.15

Rectangle {
    id: root

    property string timerName: ""
    property string timerStatus: ""
    property string timerValue: ""

    height: 45
    color: "transparent"

    BorderImage {
        anchors.fill: parent
        source: "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/side.png"

        border.left: 16
        border.right: 5
        border.top: 16
        border.bottom: 5
    }

    Text {
        width: 180

        anchors {
            left: parent.left
            leftMargin: 10
            verticalCenter: parent.verticalCenter
        }

        text: root.timerName
        color: "#c0c0c0"
        font.bold: true
        font.pixelSize: 16
    }

    Text {
        width: 180

        anchors {
            left: parent.left
            leftMargin: 190
            verticalCenter: parent.verticalCenter
        }

        text: root.timerStatus
        color: "#c0c0c0"
        font.bold: true
        font.pixelSize: 16
    }

    Text {
        width: 180

        anchors {
            left: parent.left
            leftMargin: 370
            verticalCenter: parent.verticalCenter
        }

        text: root.timerValue
        color: "#2f34bb"
        font.bold: true
        font.pixelSize: 16
    }

    Row {
        anchors {
            right: parent.right
            rightMargin: 10
            verticalCenter: parent.verticalCenter
        }

        spacing: 4

        IconButton {
            iconSource: "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/startButton.png"

            onClicked: {
                console.log("Start")
            }
        }

        IconButton {
            iconSource: "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/pauseButton.png"

            onClicked: {
                console.log("Pause")
            }
        }

        IconButton {
            iconSource: "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/resetButton.png"

            onClicked: {
                timerModel.removeTimer(index)
            }
        }
    }
}
