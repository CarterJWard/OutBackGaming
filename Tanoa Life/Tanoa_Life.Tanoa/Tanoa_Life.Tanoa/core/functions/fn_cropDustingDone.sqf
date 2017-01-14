/*
    File: fn_cropDustingDone.sqf
    Author: Fresqo
    Description: starts the smoke action for crop dusting
*/

if (isNull veh1) exitWith {};
if (isNull unit1) exitWith {};
if (!life_mission) exitWith {};
if (!arrived) exitWith {};
_height = getPosATL veh1 select 2;
if (_height > 150) exitWith {titleText ["You are too high up, get below 150m!", "PLAIN", 3];};

smokes="SmokeShellRed" createVehicle [0,0,0];
smokes attachTo [veh1,[0,0,0]];
titleText ["Crop dusting started, stay within 400m and under 150m", "PLAIN", 3];
while {true} do 
  {
    if (isNull veh1 || isNull unit1 || !alive veh1 || !alive unit1 || isNull smokes) exitWith {};
    if (getPosATL veh1 select 2 > 170) exitWith 
        {
            titleText ["You went up too high!", "PLAIN", 3];
            noFaults = false;
            if (!isNull smokes) then {
                deleteVehicle smokes;
            };
        };
    if (unit1 distance curPos > (cropDist + 50)) exitWith 
        {
            titleText ["You went too far away!", "PLAIN", 3];
            noFaults = false;
            if (!isNull smokes) then {
                deleteVehicle smokes;
            };
        };
    life_cash = life_cash + 200;
    sleep 1;
  };
cropDone = true;
