pragma Singleton
import QtQuick 2.10
import "coba.js" as JS

QtObject {
	id: variant

    	property int leftCent
	property int rightCent
	property int abs
	property int engine
	property int warn
	property int lamp
	property int safety
	property int proximity
	property int rpm
	property int speed
	property int enggTemp
	property int battTemp
	property int battLev

    	property Timer rpmTimer: Timer{
        running: true
        repeat: true
        onTriggered: JS.rpmTimer()
        interval: 10
    	}

    	property Timer speedTimer: Timer{
        running: true
        repeat: true
        onTriggered: JS.SpeedTimer()
        interval: 5
    	}
}

    	property Timer engineTempTimer: Timer{
        running: true
        repeat: true
        onTriggered: JS.EnggTempTimer
		interval: 100
	}
	
	property Timer battTempTimer: Timer{
        running: true
        repeat: true
        onTriggered: JS.BattTempTimer
		interval: 100
	}	
		
	property Timer battLevTimer: Timer{
        running: true
        repeat: true
        onTriggered: JS.BattTempTimer
		interval: 200
	}	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		Timer()
        interval: 100
    }

}
