/*
    File: fn_cropDustingDone.sqf
    Author: Fresqo
    Description: starts the smoke action for crop dusting
	
	INSTALLATION INSTRUCTIONS
	    - PLACE FILE IN core/functions/fn_cropDustingDone.sqf
*/

/* ADJUST THESE */
private _value = 2000; //THE MONEY PER SECOND WHILE DUSTING IF THEY STAY WITHIN ZONE

/* DO NOT TOUCH BELOW */
if (isNull veh1) exitWith {};
if (isNull unit1) exitWith {};
if (!life_mission) exitWith {};
if (!arrived) exitWith {};
_height = getPosATL veh1 select 2;
if (_height > 100) exitWith {titleText ["You are too high up, get below 100m!", "PLAIN", 3];};

smokes="SmokeShellRed" createVehicle [0,0,0];
smokes attachTo [veh1,[0,0,0]];
titleText ["Crop dusting started, stay within 400m and under 100m", "PLAIN", 3];
while {true} do 
  {
    if (isNull veh1 || isNull unit1 || !alive veh1 || !alive unit1 || isNull smokes) exitWith {};
    if (getPosATL veh1 select 2 > 120) exitWith 
        {
            //titleText ["You went up too high!", "PLAIN", 3];
            hint "You went up too high!";
            noFaults = false;
            if (!isNull smokes) then {
                deleteVehicle smokes;
            };
        };
    if (unit1 distance curPos > (cropDist + 50)) exitWith 
        {
            //titleText ["You went too far away!", "PLAIN", 3];
            hint "You went too far away!";
            noFaults = false;
            if (!isNull smokes) then {
                deleteVehicle smokes;
            };
        };
    life_cash = life_cash + _value;
    uiSleep 1;
  };
cropDone = true;
