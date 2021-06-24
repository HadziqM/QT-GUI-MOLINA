pragma Singleton
import QtQuick 2.10
import "coba.js" as JS

QtObject {
    id: values

    property int leftCent : JS.LeftCentState
    property int rightCent : JS.RightCentState
    property int abs : JS.AbsState
    property int engine: JS.EngineState
    property int warn : JS.WarnState
    property int lamp : JS.LampState
    property int safety : JS.SafetyState
    property int proximity : JS.ProximityState
    property int rpm :JS.CurrentRpm
    property int speed
    property int enggTemp
    property int battTemp
    property int battLev


    property Timer speedTimer: Timer{
        running: true
        repeat: true
        onTriggered: JS.speedTimer()
        interval: 5
    }

    property Timer rpmTimer: Timer{
        running: true
        repeat: true
        onTriggered: JS.rpmTimer()
        interval: 10
    }
    property Timer engineTempTimer: Timer{
        running: true
        repeat: true
        onTriggered: JS.enggTempTimer()
        interval: 100
    }

    property Timer battTempTimer: Timer{
        running: true
        repeat: true
        onTriggered: JS.battTempTimer()
        interval: 100
    }

    property Timer battLevTimer: Timer{
        running: true
        repeat: true
        onTriggered: JS.battLevTimer()
        interval: 100
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}
}
##^##*/
