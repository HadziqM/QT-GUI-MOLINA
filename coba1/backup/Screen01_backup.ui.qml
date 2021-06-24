import QtQuick 2.15
import QtQuick.Controls 2.15
import coba1 1.0

Rectangle {
    id: main
    width: Constants.width
    height: Constants.height
    color: "#000000"
    property int initial: 0
    property int hmmm: battempbar.calculate / 50
    property int batlev: (100 - batlife.calculate) / 40
    property int line: batlife.calculate * 2

    Speedbar {
        id: speedbar
        x: 318
        y: 187
        initial: 1
    }

    Ennginebar {
        id: ennginebar
        x: 318
        y: 275
    }

    Proximitysensor {
        id: proximitysensor
        x: 1070
        y: 258
        initial: 1
    }

    Suhu {
        id: suhu
        x: 574
        y: 46
        initial: main.hmmm
    }

    Battempbar {
        id: battempbar
        x: 318
        y: 452
        progress: 0
    }

    Abs {
        id: abs
        x: 327
        y: 49
    }

    Enggtempbar {
        id: enggtempbar
        x: 318
        y: 364
    }

    Batlife {
        id: batlife
        x: 318
        y: 540
    }

    Leftcent {
        id: leftcent
        x: 46
        y: 49
    }

    Warning {
        id: warning
        x: 188
        y: 49
    }

    Batt {
        id: batt
        x: 469
        y: 49
        initial: main.batlev
    }

    Lamp {
        id: lamp
        x: 714
        y: 49
    }

    Safety {
        id: safety
        x: 858
        y: 49
    }

    Machine {
        id: machine
        x: 992
        y: 49
    }

    Rightcent {
        id: rightcent
        x: 1131
        y: 49
    }

    Text {
        id: text1
        x: 91
        y: 187
        width: 193
        height: 70
        color: "#add8e6"
        text: qsTr("Speed ")
        font.pixelSize: 32
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: text2
        x: 86
        y: 275
        width: 193
        height: 70
        color: "#add8e6"
        text: qsTr("Engine ")
        font.pixelSize: 32
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: text3
        x: 86
        y: 364
        width: 193
        height: 70
        color: "#add8e6"
        text: qsTr("Engg. Temp. ")
        font.pixelSize: 32
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: text4
        x: 86
        y: 452
        width: 193
        height: 70
        color: "#add8e6"
        text: qsTr("Battery Temp.")
        font.pixelSize: 32
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: text5
        x: 86
        y: 540
        width: 193
        height: 70
        color: "#add8e6"
        text: qsTr("Battery Level")
        font.pixelSize: 32
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: text6
        x: 469
        y: 622
        width: 210
        height: 70
        color: "#add8e6"
        text: qsTr("Approximately")
        font.pixelSize: 32
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: variable
        x: 685
        y: 622
        width: 76
        height: 70
        color: "#add8e6"
        text: main.line
        font.pixelSize: 32
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: text9
        x: 785
        y: 622
        width: 210
        height: 70
        color: "#add8e6"
        text: qsTr("KM left")
        font.pixelSize: 32
        verticalAlignment: Text.AlignVCenter
    }
    states: [
        State {
            name: "Data"
            when: main.initial == 0

            PropertyChanges {
                target: speedbar
                initial: 0
                progress: 51
            }

            PropertyChanges {
                target: ennginebar
                progress: 10
                initial: 0
            }

            PropertyChanges {
                target: proximitysensor
                initial: 0
            }

            PropertyChanges {
                target: battempbar
                progress: 60
                initial: 0
            }

            PropertyChanges {
                target: abs
                initial: 0
            }

            PropertyChanges {
                target: enggtempbar
                progress: 90
                initial: 0
            }

            PropertyChanges {
                target: batlife
                progress: 30
                initial: 0
            }

            PropertyChanges {
                target: leftcent
                initial: 0
            }

            PropertyChanges {
                target: warning
                initial: 0
            }

            PropertyChanges {
                target: batt
                initial: 0
            }

            PropertyChanges {
                target: lamp
                initial: 0
            }

            PropertyChanges {
                target: safety
                initial: 0
            }

            PropertyChanges {
                target: machine
                initial: 0
            }

            PropertyChanges {
                target: rightcent
                initial: 0
            }
        },
        State {
            name: "animated"
            when: main.initial == 1

            PropertyChanges {
                target: proximitysensor
                initial: 2
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}D{i:17}D{i:18}D{i:19}D{i:20}D{i:21}D{i:22}
}
##^##*/

