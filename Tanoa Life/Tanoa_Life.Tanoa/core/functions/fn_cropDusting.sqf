#include "..\..\script_macros.hpp"
/*
    File: fn_cropDusting.sqf
    Author: Fresqo
    Description: initializes the crop dusting mission for the player
        TODO:
            MAKE MULTI MISSION AVAILABLE
            - return some more info like vehicle type
            - mission type
*/
private ["_marker"];
params [
    ["_actionOwner",objNull,[objNull]],
    ["_unit",objNull,[objNull]],
    ["_action",-1,[-1]],
    ["_arr",[],[[]]]
];

_arr params [
    ["_veh",objNull,[objNull]]
];

/* Declare some vars */
timeOut = false;
arrived = false;
cropDone = false;
cropDist = 400;
noFaults = true;
taskDone = false;
private _multi = 0;
unit1 = _unit;
veh1 = _veh;
private _initTime = time;
private _dust = -1;
private _first = true; //ADD SOME TIME TO TAKE OFF

/* Error Checks */
if (driver veh1 != player) exitWith {};
if (life_inv_pesticide < 1) exitWith {hint "You need pesticide to continue!"};
if (speed veh1 > 5) exitWith {titleText ["You need to be stopped still to start mission!", "PLAIN", 3];};
if (_action isEqualTo -1) exitWith {diag_log "no action number"};
if (isNull _actionOwner || isNull _unit || !alive _actionOwner || !alive _unit || !alive _veh || isNull _veh) exitWith {};
if !([false,"pesticide",1] call life_fnc_handleInv) exitWith {hint "You need pesticide to start mission"};

_actionOwner removeAction _action;
_togoPoints = ["sand_mine","apple_1","apple_2","peaches_1","sand_mine1","peaches_2"];
life_mission = true;
titleText ["Crop dusting mission started! Get to the first location before the timer runs out!", "PLAIN", 3];

{
    private _dist = _unit distance getMarkerPos _x;
    curPos = getMarkerPos _x;
    switch (typeOf _veh) do {
        case "C_Plane_Civil_01_F": 
            {
                _avgSpeed = 200;
                _timeLimit = ((_dist / _avgSpeed) / 1000);
                times = ((_timeLimit * 60) * 60);
                times = times - _multi;
                if (_first) then {times = times + 40; _first = false;};
            };
    };
    
    _multi = _multi + 1;
    
    _marker = createMarkerLocal ["cropDust_marker",curPos];
    _marker setMarkerColorLocal "ColorRed";
    _marker setMarkerTypeLocal "Mil_dot";
    _marker setMarkerTextLocal "CROP DUSTING ZONE";  
    
    [] spawn
    { 
	    private["_uiDisp","_time","_timer"]; 
	    disableSerialization; 
	    6 cutRsc ["life_timer","PLAIN"]; 
	    _uiDisp = uiNamespace getVariable "life_timer"; 
	    _timer = _uiDisp displayCtrl 38301; 
	    _time = time + times; 
	    timeOut = false;
	    arrived = false;
	    cropDone = false;
	    cropDist = 400;
 
     addMissionEventHandler ["Draw3D", {
	    if (isNull veh1 || isNull unit1 || !alive veh1 || !alive unit1 || (timeOut) || (arrived) || unit1 distance curPos < cropDist) exitWith {removeAllMissionEventHandlers "Draw3D";};
	    private _disto = (unit1 distance curPos);
	    drawIcon3D ["", [1,0,0,0.5], curPos, 0, 0, 0, format["%1m",_disto], 1, 0.05, "PuristaMedium"];
     }];
            
	    while {true} do 
	    { 
		    if(isNull _uiDisp) then { 
		        6 cutRsc ["life_timer","PLAIN"]; 
		        _uiDisp = uiNamespace getVariable "life_timer"; 
		        _timer = _uiDisp displayCtrl 38301; 
		    }; 
		    if (round(_time - time) < 1) exitWith {timeOut = true};
		    if (timeOut) exitWith {};
		    if (arrived) exitWith {};
		    _timer ctrlSetText format["%1",[(_time - time),"MM:SS"] call BIS_fnc_secondsToString]; 
		    sleep 0.08; 
	    }; 
	    if (timeOut) exitWith {6 cutText["","PLAIN"];};
	    if (arrived) exitWith {6 cutText["","PLAIN"];};
	    6 cutText["","PLAIN"];
    };
    
    waitUntil {!alive unit1 || unit1 distance curPos < cropDist || isNull unit1 || isNull veh1 || !alive veh1 || (timeOut) || vehicle unit1 isEqualTo unit1};
        if (!alive veh1 || !alive unit1 || isNull veh1 || isNull unit1) exitWith {diag_log "CROP DUSTING: dead or null units";arrived = true;};
        if (timeOut) exitWith {titleText ["You didn't make it to the marker in time!", "PLAIN", 3];};
        if (vehicle unit1 isEqualTo unit1) exitWith {timeOut = true;};
        if (unit1 distance curPos < (cropDist + 50) && !isNull unit1 && alive unit1 && alive veh1 && !isNull veh1) then 
            {
                arrived = true;
                titleText [format["Press ACTION key now to dust crops! Stay within %1(m) and below 150(m) to get paid!",cropDist], "PLAIN", 3];
                
            };
        waitUntil {(cropDone) || isNull veh1 || isNull unit1 || !alive veh1 || !alive unit1};
        if (!alive veh1 || !alive unit1 || isNull veh1 || isNull unit1) exitWith {diag_log "CROP DUSTING: dead or null units";arrived = true;};
        
        _cnt = count _togoPoints -1;
        if ((_togoPoints select _cnt) != _x) then {
            titleText ["Get ready to move onto the next marker!", "PLAIN", 3];
        } else {
            titleText ["All fields have been dusted!", "PLAIN", 3];
            taskDone = true;
        };
        deleteMarkerLocal _marker;
} forEach _togoPoints;


if (!isNil "_marker") then {deleteMarkerLocal _marker;};
if (!isNull unit1 && alive unit1 && noFaults && taskDone) then {
    private _timeTook = time - _initTime;
    private _cropBonus = LIFE_SETTINGS(getNumber,"crop_bonus");
    hint format["You got a bonus of $%1 for finishing with no faults and your time was %2",_cropBonus,[_timeTook,"MM:SS"] call BIS_fnc_secondsToString];
    
    life_cash = life_cash + _cropBonus;
    private _misTimes = missionNamespace getVariable["cropTimes",[]];
    _misTimes pushBack [name unit1,_timeTook];
    missionNamespace setVariable["cropTimes",_misTimes,true];
} else {
hint "Since you did not stay inside the zones at all times you don't get a time or bonus!";
};

sleep 600;

life_mission = false;
