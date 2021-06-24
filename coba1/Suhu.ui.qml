import QtQuick 2.15
import QtQuick.Timeline 1.0

Item {
    id: temp
    width: 120
    height: 100
    property int initial: 1

    Image {
        id: cold
        x: 0
        y: 0
        width: 120
        height: 100
        opacity: 1
        source: "images/temp.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: hot
        x: 0
        y: 0
        width: 120
        height: 100
        source: "images/asset 5"
        fillMode: Image.PreserveAspectFit
    }
    states: [
        State {
            name: "State1"
            when: temp.initial == 0

            PropertyChanges {
                target: hot
                opacity: 0
            }

            PropertyChanges {
                target: cold
                opacity: 1
            }
        },
        State {
            name: "State2"
            when: temp.initial == 1
            PropertyChanges {
                target: hot
                opacity: 1
            }

            PropertyChanges {
                target: cold
                opacity: 0
            }
        }
    ]
}
