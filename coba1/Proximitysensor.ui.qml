import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0

Item {
    id: proximity
    width: 180
    height: 250
    property int initial: 1

    Image {
        id: asset11
        x: 0
        y: 0
        width: 180
        height: 250
        source: "images/Asset 11.png"
        fillMode: Image.PreserveAspectFit
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: front
                loops: -1
                duration: 2000
                running: false
                to: 100
                from: 0
            },
            TimelineAnimation {
                id: back
                loops: -1
                duration: 2000
                running: false
                to: 200
                from: 100
            },
            TimelineAnimation {
                id: basic
                pingPong: false
                loops: -1
                duration: 5000
                running: true
                to: 200
                from: 0
            }
        ]
        endFrame: 200
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: yellow
            property: "opacity"
            Keyframe {
                frame: 50
                value: 1
            }

            Keyframe {
                frame: 100
                value: 0
            }

            Keyframe {
                frame: 0
                value: 0
            }
        }

        KeyframeGroup {
            target: yellow2
            property: "opacity"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 150
                value: 1
            }

            Keyframe {
                frame: 100
                value: 0
            }

            Keyframe {
                frame: 200
                value: 0
            }
        }
    }

    Image {
        id: yellow
        x: 47
        y: 0
        width: 50
        height: 36
        source: "images/yellow.png"
        property string property0: yellow.opacity
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: yellow2
        x: 98
        y: 198
        width: 50
        height: 52
        source: "images/yellow 2.png"
        fillMode: Image.PreserveAspectFit
    }

    states: [
        State {
            name: "State1"
            when: proximity.initial == 0

            PropertyChanges {
                target: yellow2
                opacity: 0
            }

            PropertyChanges {
                target: yellow
                opacity: 0
            }

            PropertyChanges {
                target: timeline
                currentFrame: 0
                enabled: true
            }

            PropertyChanges {
                target: basic
                running: false
            }
        },
        State {
            name: "State2"
            when: proximity.initial == 1

            PropertyChanges {
                target: yellow
                opacity: 1
            }

            PropertyChanges {
                target: yellow2
                opacity: 0
            }

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: front
                running: true
            }
        },
        State {
            name: "State3"
            when: proximity.initial == 2
            PropertyChanges {
                target: yellow
                opacity: 0
            }

            PropertyChanges {
                target: yellow2
                opacity: 1
            }

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: front
                running: false
            }

            PropertyChanges {
                target: back
                running: true
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;height:250;width:180}D{i:2}D{i:15}
}
##^##*/

