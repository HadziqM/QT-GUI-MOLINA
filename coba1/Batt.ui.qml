import QtQuick 2.15

Item {
    id: battery
    width: 120
    height: 100
    property int initial: 1

    Image {
        id: low
        x: 0
        y: 0
        width: 120
        height: 100
        opacity: 1
        source: "images/asset 4.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: norm
        x: 0
        y: 0
        width: 120
        height: 100
        source: "images/bat"
        fillMode: Image.PreserveAspectFit
    }
    Image {
        id: crit
        x: 0
        y: 0
        width: 120
        height: 100
        source: "images/low bat"
        fillMode: Image.PreserveAspectFit
    }
    states: [
        State {
            name: "State1"
            when: battery.initial == 0

            PropertyChanges {
                target: norm
                opacity: 0
            }

            PropertyChanges {
                target: low
                opacity: 1
            }
            PropertyChanges {
                target: crit
                opacity: 0
            }
        },
        State {
            name: "State2"
            when: battery.initial == 1
            PropertyChanges {
                target: norm
                opacity: 1
            }

            PropertyChanges {
                target: low
                opacity: 0
            }
            PropertyChanges {
                target: crit
                opacity: 0
            }
        },
        State {
            name: "State3"
            when: battery.initial == 2
            PropertyChanges {
                target: norm
                opacity: 0
            }

            PropertyChanges {
                target: low
                opacity: 0
            }
            PropertyChanges {
                target: crit
                opacity: 1
            }
        }
    ]
}
