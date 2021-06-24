import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0

Item {
    id: batterybar
    width: 700
    height: 70
    property int initial: 1
    property int progress: timeline.currentFrame
    property int calculate: 100 - timeline.currentFrame

    Text {
        id: indicator
        x: 5
        y: 5
        width: 75
        height: 60
        text: batterybar.calculate
        font.pixelSize: 35
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                properties: "cuurentFrame"
                pingPong: true
                loops: -1
                duration: 5000
                running: true
                to: 100
                from: 0
            }
        ]
        endFrame: 100
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: variable
            property: "color"

            Keyframe {
                property string property0: indicator.text
                frame: 70
                value: "#ffff00"
            }

            Keyframe {
                frame: 0
                value: "#add8e6"
            }

            Keyframe {
                frame: 90
                value: "#ff0000"
            }
        }

        KeyframeGroup {
            target: indicator
            property: "color"

            Keyframe {
                frame: 0
                value: "#add8e6"
            }

            Keyframe {
                frame: 70
                value: "#ffff00"
            }
            Keyframe {
                frame: 90
                value: "#ff0000"
            }
        }

        KeyframeGroup {
            target: bar
            property: "color"

            Keyframe {
                frame: 0
                value: "#add8e6"
            }
            Keyframe {
                frame: 70
                value: "#ffff00"
            }
            Keyframe {
                frame: 90
                value: "#ff0000"
            }
        }

        KeyframeGroup {
            target: bar
            property: "width"
            Keyframe {
                frame: 100
                value: 1
            }
        }
    }

    Text {
        id: variable
        x: 80
        y: 5
        width: 50
        height: 60
        text: qsTr("%")
        font.pixelSize: 35
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Rectangle {
        id: bar
        x: 150
        y: 0
        width: 550
        height: 70
        color: "#ffffff"
        anchors.right: parent.right
    }
    states: [
        State {
            name: "data"
            when: batterybar.initial == 0

            PropertyChanges {
                target: timelineAnimation
                running: false
            }
        },
        State {
            name: "animated"
            when: batterybar.initial == 1

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: timelineAnimation
                running: true
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:2}
}
##^##*/

