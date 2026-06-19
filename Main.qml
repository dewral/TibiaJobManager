import QtQuick
import QtQuick.Window

Window {
    id: root
    visible: true
    width: 760
    height: 560

    minimumWidth: 560
    minimumHeight: 420

    color: "transparent"
    flags: Qt.FramelessWindowHint | Qt.Window

    Rectangle {
        anchors.fill: parent

        BorderImage {
            anchors.fill: parent
            source: "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/window.png"
            smooth: false
            border.left: 6
            border.right: 6
            border.top: 6
            border.bottom: 6
        }
    }

    TopBar {
        id: topBar1
    }

    Header{
        id: headerRow
    }

    ContentArea {
        id: contentArea
        model: timerModel
        anchors {
            top: headerRow.bottom
            left: parent.left
            right: parent.right
            bottom: footer.top
            margins: 10
        }
    }

    Footer {
        id: footer
    }

    ListModel {
        id: timerModel

        ListElement {
            name: "Midhem Cave"
            status: "Active"
            time: "00:00:00"
        }

        ListElement {
            name: "Nyhem Town"
            status: "Paused"
            time: "01:25:44"
        }
        ListElement {
            name: "Nyhem Town"
            status: "Paused"
            time: "01:25:44"
        }
        ListElement {
            name: "Nyhem Town"
            status: "Paused"
            time: "01:25:44"
        }
        ListElement {
            name: "Nyhem Town"
            status: "Paused"
            time: "01:25:44"
        }
        ListElement {
            name: "Nyhem Town"
            status: "Paused"
            time: "01:25:44"
        }
        ListElement {
            name: "Nyhem Town"
            status: "Paused"
            time: "01:25:44"
        }
        ListElement {
            name: "Nyhem Town"
            status: "Paused"
            time: "01:25:44"
        }
        ListElement {
            name: "Nyhem Town"
            status: "Paused"
            time: "01:25:44"
        }
        ListElement {
            name: "Nyhem Town"
            status: "Paused"
            time: "01:25:44"
        }
        ListElement {
            name: "Nyhem Town"
            status: "Paused"
            time: "01:25:44"
        }
        ListElement {
            name: "Nyhem Town"
            status: "Paused"
            time: "01:25:44"
        }
    }
}
