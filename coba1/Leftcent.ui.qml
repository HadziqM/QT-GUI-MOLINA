import QtQuick 2.15
import QtQuick.Timeline 1.0

Item {
    id: autobreak
    width: 120
    height: 100
    property int initial: 1

    Image {
        id: a1
        x: 0
        y: 0
        width: 120
        height: 100
        opacity: 1
        source: "images/Asset 1.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: l1
        x: 0
        y: 0
        width: 120
        height: 100
        opacity: 0
        source: "images/L.sent.png"
        fillMode: Image.PreserveAspectFit
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                loops: -1
                duration: 2000
                running: true
                to: 100
                from: 0
            }
        ]
        endFrame: 100
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: l1
            property: "opacity"
            Keyframe {
                frame: 50
                value: 1
            }

            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 100
                value: 0
            }
        }
    }
    states: [
        State {
            name: "State1"
            when: autobreak.initial == 0

            PropertyChanges {
                target: l1
                opacity: 0
            }

            PropertyChanges {
                target: a1
                opacity: 1
            }

            PropertyChanges {
                target: timeline
                enabled: false
            }
        },
        State {
            name: "State2"
            when: autobreak.initial == 1
            PropertyChanges {
                target: l1
                opacity: 1
            }

            PropertyChanges {
                target: a1
                opacity: 0
            }

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



