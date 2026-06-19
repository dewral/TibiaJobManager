import QtQuick 2.15

Rectangle {
    id: contentArea
    color: "transparent"
    property alias model: timerList.model

    BorderImage {
        anchors.fill: parent
        source: "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/flat.png"

        border.left: 16
        border.right: 5
        border.top: 16
        border.bottom: 5
    }
    ListView {
        id: timerList
        anchors.fill: parent
        anchors.margins: 4
        boundsBehavior: Flickable.StopAtBounds
        clip: true


        model: null

        delegate: TimerRow {
            width: timerList.width - 8

            timerName: model.name
            timerStatus: model.status
            timerValue: model.time
        }

    }
    TibiaScrollBar {
        id: scrollBar

        anchors {
            top: parent.top
            right: parent.right
            bottom: parent.bottom
        }

        flickable: timerList

        Connections {
            target: timerList

            function onContentYChanged() {
                console.log(
                    "contentY =", timerList.contentY,
                    "contentHeight =", timerList.contentHeight,
                    "height =", timerList.height
                )
            }
        }
    }
}
