import QtQuick 2.15

// TOP BAR
Rectangle {
    id: topBar
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    height: 35

    BorderImage {
        anchors.fill: parent
        source: "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/topBar.png"
        smooth: false

        border.left: 6
        border.right: 6
        border.top: 6
        border.bottom: 6
    }

    Image {
        id: appIcon

        width: 28
        height: 28

        anchors {
            left: parent.left
            leftMargin: 8
            verticalCenter: parent.verticalCenter
        }

        source: "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/appIcon.png"
        smooth: false
    }

    Text {
        id: appTitle
        text: qsTr("Tibia Job Manager")
        anchors {
            left: appIcon.right
            verticalCenter: parent.verticalCenter
        }

        color: "#c0c0c0"
        font.bold: true
        font.pixelSize: 16
    }

    Rectangle {
        id: minimizeButton

        width: 18
        height: 18

        anchors {
            right: exitButton.left
            rightMargin: 5

            verticalCenter: parent.verticalCenter
        }

        Image {
            id: minimizeImage
            anchors.fill: parent
            smooth: false
            source: minimizeArea.pressed
                    ? "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/minimizeButtonPressed.png"
                    : "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/minimizeButton.png"
        }


        MouseArea {
            id: minimizeArea

            anchors.fill: parent

            onClicked: {
                root.showMinimized()
            }
        }
    }

    Rectangle {
        id: exitButton

        width: 18
        height: 18

        anchors {
            right: parent.right
            rightMargin: 5

            verticalCenter: parent.verticalCenter
        }

        Image {
            id: exitImage
            anchors.fill: parent
            smooth: false
            source: exitArea.pressed
                ? "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/exitButtonPressed.png"
                : "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/exitButton.png"
        }

        MouseArea {
            id: exitArea

            anchors.fill: parent

            onClicked: {
                root.close()
            }
        }
    }

    // WINDOW DRAG
    MouseArea {
        anchors {
            left: parent.left
            right: minimizeButton.left
            top: parent.top
            bottom: parent.bottom
        }

        onPressed: root.startSystemMove()
    }
}
