import QtQuick 2.15

Item {
    id: root
    implicitWidth: 30
    implicitHeight: 30
    property string iconSource: ""
    signal clicked()

    BorderImage {
        anchors.fill: parent
        source: mouseArea.pressed
            ? "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/buttonPressed.png"
            : "file:///C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/images/button.png"
        smooth: false
        border.left: 2
        border.right: 2
        border.top: 2
        border.bottom: 2
    }
    Image {
        id: icon
        source: root.iconSource
        smooth: false
        anchors.centerIn: parent
        anchors.verticalCenterOffset: mouseArea.pressed ? 1 : 0
    }
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
