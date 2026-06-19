import QtQuick 2.15

Item {
    id: root

    property bool dragging: false
    property var flickable
    height: parent.height

    width: 12

    Rectangle {
        id: upButton

        width: 12
        height: 12

        anchors.top: parent.top
        color: "transparent"

        Image {
            anchors.fill: parent
            source: "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/scrollBarUp.png"
            smooth: false
        }

        MouseArea {
            anchors.fill: parent

            onClicked: {
                if(root.flickable)
                    root.flickable.contentY =
                        Math.max(
                            0,
                            root.flickable.contentY - 32
                        )
            }
        }
    }

    Rectangle {
        id: downButton

        width: 12
        height: 12

        anchors.bottom: parent.bottom
        color: "transparent"

        Image {
            anchors.fill: parent
            source: "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/scrollBarDown.png"
            smooth: false
        }

        MouseArea {
            anchors.fill: parent

            onClicked: {
                if(root.flickable)
                    root.flickable.contentY =
                        Math.min(
                            root.flickable.contentHeight -
                            root.flickable.height,
                            root.flickable.contentY + 32
                        )
            }
        }
    }

    Image {
        id: track
        anchors {
            top: upButton.bottom
            bottom: downButton.top
            left: parent.left
            right: parent.right
        }
    }

    readonly property real scrollPos:
        root.flickable &&
        root.flickable.contentHeight > root.flickable.height
        ? root.flickable.contentY /
          (root.flickable.contentHeight - root.flickable.height)
        : 0

    Rectangle {
        id: thumb

        width: 12
        height: root.flickable
            ? Math.max(
                  32,
                  track.height *
                  (root.flickable.height /
                   root.flickable.contentHeight)
              )
            : 32

        Binding {
            target: thumb
            property: "y"
            when: !root.dragging

            value: upButton.height +
                   scrollPos * (track.height - thumb.height)
        }

        Image {
            anchors.fill: parent

            source: "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/trackScrollBar.png"

            smooth: false
        }

        MouseArea {
            anchors.fill: parent

            drag.target: thumb
            drag.axis: Drag.YAxis

            drag.minimumY: upButton.height
            drag.maximumY: upButton.height + track.height - thumb.height

            onPressed: root.dragging = true

            onReleased: {
                root.dragging = false
            }

            onPositionChanged: {
                if (!root.flickable)
                    return

                let ratio =
                    (thumb.y - upButton.height) /
                    (track.height - thumb.height)

                root.flickable.contentY =
                    ratio *
                    (root.flickable.contentHeight -
                     root.flickable.height)
            }
        }
    }
}
