import QtQuick 2.15
import QtQuick.Controls 2.15


ApplicationWindow {
    property string currTime: "00:00:00"
    property QtObject backend
    visible: true
    width: 400
    height: 600
    title: "App"

Rectangle {
        anchors.fill: parent

Image {
            sourceSize.width: parent.width
            sourceSize.height: parent.height
            source: "file:///home/yuri/PycharmProjects/pythonProject111/UI/images/playas.jpeg"
            fillMode: Image.PreserveAspectCrop
        }

Connections {
    target: backend
    function onUpdated(msg) {
    currTime = msg;
}
}

Rectangle {
            anchors.fill: parent
            color: "transparent"
            Text {
                    anchors {
                        bottom: parent.bottom
                        bottomMargin: 12
                        left: parent.left
                        leftMargin: 12
                    }
                    text: currTime
                    font.pixelSize: 48
                    color: "yellow"
            }
        }
    }
}

