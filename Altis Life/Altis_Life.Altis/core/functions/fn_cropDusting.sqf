#include "..\..\script_macros.hpp"
/*
    File: fn_cropDusting.sqf
    Author: Fresqo
    Description: initializes the crop dusting mission for the player
        TODO:
            MAKE MULTI MISSION AVAILABLE
            - return some more info like vehicle type
            - mission type
			
	INSTALLATION INSTRUCTIONS
        - PLACE THIS FILE IN core/functions/fn_cropDusting.sqf	
		- Adjust the parts below indicated
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

/* EDIT THESE TO YOUR LIKING */
cropDist = 500; //The distance you must stay within while dusting to get bonus at end
private _planes = [["C_Plane_Civil_01_F",140],["C_Plane_Civil_01_racing_F",140]]; //planes and their average speeds
/* THE FOLLOWING IS AS FOLLOWS ["MARKER START INITIALISE",["MARKER1","MARKER2"...ETC]] */
private _routes = [["air_g_1",["dusting1_1","dusting1_2","dusting1_3","dusting1_4","dusting1_5"]],["reb_v_1",["dusting2_1","dusting2_2","dusting1_4","dusting1_5"]]]; 


/* Declare some vars DO NOT TOUCH BELOW */
timeOut = false;
arrived = false;
cropDone = false;
noFaults = true;
taskDone = false;
private _multi = 0;
unit1 = _unit;
veh1 = _veh;
private _routeFound = [];
private _initTime = time;
private _dust = -1;
private _first = true; //ADD SOME TIME TO TAKE OFF
_pl1 = _planes select 0;
_pl2 = _planes select 1;
/* Error Checks */
if (!(typeOf veh1 in _pl1 or typeOf veh1 in _pl2)) exitWith {};
{if (player distance (getMarkerPos (_x select 0)) < 1000) exitWith {_routeFound = (_x select 1)};} forEach _routes;
if (count _routeFound isEqualTo 0) exitWith {hint "You must start the crop dusting mission from the proper place!"};
//if (player distance (getMarkerPos "air_g_1") > 1000 && player distance (getMarkerPos "air_g_2") > 1000) exitWith {hint "You must start the crop dusting mission from Melbourne or Sydney!"};
if (driver veh1 != player) exitWith {};
if (life_inv_pesticide < 1) exitWith {hint "You need pesticide to continue!"};
if (speed veh1 > 5) exitWith {titleText ["You need to be stopped still to start mission!", "PLAIN", 3];};
if (_action isEqualTo -1) exitWith {diag_log "no action number"};
if (isNull _actionOwner || isNull _unit || !alive _actionOwner || !alive _unit || !alive _veh || isNull _veh) exitWith {};
if !([false,"pesticide",1] call life_fnc_handleInv) exitWith {hint "You need pesticide to start mission"};

_actionOwner removeAction _action;
_togoPoints = _routeFound;
life_mission = true;
titleText ["Crop dusting mission started! Get to the first location before the timer runs out!", "PLAIN", 3];
//["Crop Dusting","Crop dusting mission started! Get to the first location before the timer runs out!",nil,""] call life_fnc_showNotification;

{
    private _dist = _unit distance getMarkerPos _x;
    currPos = getMarkerPos _x;
	private _avgSpeed = 150;
	{
	    if (typeOf veh1 isEqualTo (_x select 0)) exitWith 
		{
		    _avgSpeed = _x select 1;
		};
	} forEach _planes;
	/*
    private _avgSpeed = switch (typeOf veh1) do {
        case "sab_piper2": {140};
        case "sab_FAAllegro": {150};
        case "sab_RobinDR400_2": {190};
        default {150};
    };
	*/
    
    _timeLimit = ((_dist / _avgSpeed) / 800);
    times = ((_timeLimit * 60) * 60); 
    times = times - _multi;
    if (_first) then {times = times + 40; _first = false;};
    
    _multi = _multi + 1;
    
    _marker = createMarkerLocal ["cropDust_marker",currPos];
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
	    if (isNull veh1 || isNull unit1 || !alive veh1 || !alive unit1 || (timeOut) || (arrived) || unit1 distance currPos < cropDist) exitWith {removeAllMissionEventHandlers "Draw3D";};
	    private _disto = (unit1 distance currPos);
	    drawIcon3D ["", [1,0,0,0.5], currPos, 0, 0, 0, format["%1m",_disto], 1, 0.05, "PuristaMedium"];
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
    
    waitUntil {!alive unit1 || unit1 distance currPos < cropDist || isNull unit1 || isNull veh1 || !alive veh1 || (timeOut) || vehicle unit1 isEqualTo unit1};
        if (!alive veh1 || !alive unit1 || isNull veh1 || isNull unit1) exitWith {diag_log "CROP DUSTING: dead or null units";arrived = true;};
        if (timeOut) exitWith {titleText ["You didn't make it to the marker in time!", "PLAIN", 3];};
        if (vehicle unit1 isEqualTo unit1) exitWith {timeOut = true;};
        if (unit1 distance currPos < (cropDist + 50) && !isNull unit1 && alive unit1 && alive veh1 && !isNull veh1) then 
            {
                arrived = true;
                titleText [format["Press ACTION key now to dust crops! Stay within %1(m) and below 100(m) to get paid!",cropDist], "PLAIN", 3];
                
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
    _vehType = (typeOf veh1);
    _misTimes pushBack [name unit1,_timeTook,_vehType];
    missionNamespace setVariable["cropTimes",_misTimes,true];
    //[1] remoteExec ["TON_fnc_statsUpdate",RSERV];
} else {
hint "Since you did not stay inside the zones at all times you don't get a time or bonus!";
};

uiSleep 600;

life_mission = false;
