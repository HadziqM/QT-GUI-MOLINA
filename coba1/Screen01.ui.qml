import QtQuick 2.15
import QtQuick.Controls 2.15
import coba1 1.0
import Data 1.0 as Data
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0

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
        initial: 2
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
                progress: Data.Values.speed
            }

            PropertyChanges {
                target: ennginebar
                progress: Data.Values.rpm
                initial: 0
            }

            PropertyChanges {
                target: proximitysensor
                initial: Data.Values.proximity
            }

            PropertyChanges {
                target: battempbar
                progress: Data.Values.battTemp
                initial: 0
            }

            PropertyChanges {
                target: abs
                initial: Data.Values.abs
            }

            PropertyChanges {
                target: enggtempbar
                progress: Data.Values.enggTemp
                initial: 0
            }

            PropertyChanges {
                target: batlife
                progress: Data.Values.battLev
                initial: 0
            }

            PropertyChanges {
                target: leftcent
                initial: Data.Values.leftCent
            }

            PropertyChanges {
                target: warning
                initial: Data.Values.warn
            }

            PropertyChanges {
                target: lamp
                initial: Data.Values.lamp
            }

            PropertyChanges {
                target: safety
                initial: Data.Values.safety
            }

            PropertyChanges {
                target: machine
                initial: Data.Values.engine
            }

            PropertyChanges {
                target: rightcent
                initial: Data.Values.rightCent
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
    D{i:0;formeditorZoom:0.33}
}
##^##*/

