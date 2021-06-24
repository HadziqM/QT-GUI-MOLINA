/* simple simulation script for testing a Cluster UI Design */

/* ICON VRIABLE
state setiap icon
PERLU DIUPDATE
0 = MATI , 1,DAN 2 NYALA  
*/
var LeftCentState = 0
var RightCentState = 0
var EngineState = 1
var AbsState = 1
var LampState = 1
var WarnState = 1
var SafetyState = 1
var ProximityState = 2

/* BAR VARLIABLES
nilai yang perlu di update
VALUE INPUT INTERVAL 100 - 0 BAR MAPPING
0 = max (full bar) 100 = MIN (zero bar)
SPEED = 0 - 200
RPM = 0 - 4000
SUHU BATTRE = 0 - 80
SUHU MESIN = 0 - 100
BATTERY LEVEL = 1 - 100
*/
var SpeedBarCount = 10
var RpmBarCount = 30
var EnggTempBarCount = 70
var BattTempBarCount = 50
var BattLevelBarCount = 100


/* NILAI SEBELUMNYA
PERLU UPDATE CODE AGAR BISA UPDATE DATA SEBELUMNYA AOUTOMATIS
*/
var CurrentSpeed = 50
var CurrentRpm = 100
var CurrentEnggTemp = 10
var CurrentBattTemp = 40
var CurrentBattLev = 70

/*set Fungsi Variable ke QML*/
function setBarRpm() {
    variant.rpm = (CurrentRpm)
}

function setSpeedBar() {
    variant.speed = (CurrentSpeed)
}

function setEnggTemp() {
    variant.enggTemp = (CurrentEnggTemp)
}

function setBattTemp() {
    variant.battTemp = (CurrentBattTemp)
}

function setBattLevel() {
    variant.battLev = (CurrentBattLev)
}

variant.rightCent = (RightCentState)
variant.leftCent = (LeftCentState)
variant.engine = (EngineState)
variant.abs = (AbsState)
variant.warn = (WarnState)
variant.lamp = (LampState)
variant.safety = (SafetyState)
variant.proximity = (ProximityState)

/* MAIN LOOP*/
function SpeedTimer() {
    if (CurrentSpeed > SpeedBarCount){
		CurrentSpeed --
	}else{
		CurrentSpeed ++
	}
	setSpeedBar()
}

function RpmTimer() {
    if (CurrentRpm > RpmBarCount){
		RpmSpeed --
	}else{
		RpmSpeed ++
	}
	setRpmBar()
}

function EnggTempTimer() {
    if (CurrentEnggTemp > EnggTempBarCount){
		CurrentEnggTemp --
	}else{
		CurrentEnggTemp ++
	}
	setEnggTemp()
}

function BattTempTimer() {
    if (CurrentBattTemp > BattTempBarCount){
		CurrentBattTemp --
	}else{
		CurrentBattTemp ++
	}
	setBattTemp()
}

function BattLevTimer() {
    if (CurrentBattLev > BattLevelBarCount){
		CurrentBattLev --
	}else{
		CurrentBattLev ++
	}
	setBattLevel()
}