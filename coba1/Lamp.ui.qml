import QtQuick 2.15
import QtQuick.Timeline 1.0

Item {
    id: machine
    width: 120
    height: 100
    property int initial: 1

    Image {
        id: mac
        x: 0
        y: 0
        width: 120
        height: 100
        opacity: 1
        source: "images/stright.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: mad
        x: 0
        y: 0
        width: 120
        height: 100
        source: "images/asset 6"
        fillMode: Image.PreserveAspectFit
    }
    states: [
        State {
            name: "State1"
            when: machine.initial == 0

            PropertyChanges {
                target: mad
                opacity: 0
            }

            PropertyChanges {
                target: mac
                opacity: 1
            }
        },
        State {
            name: "State2"
            when: machine.initial == 1
            PropertyChanges {
                target: mad
                opacity: 1
            }

            PropertyChanges {
                target: mac
                opacity: 0
            }
        }
    ]
}
