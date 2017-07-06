#include "..\..\..\script_macros.hpp"
/*
    File: fn_copMenu.sqf
    Author: !TS JORDAN

    Description:
    Opens the cop menu.
*/

private["_display","_list","_rankText"];

private _rank = life_gigcoplevel25;
if (_rank <= 2) exitWith {closeDialog 0;};

disableSerialization;

waitUntil {!isNull (findDisplay 232920)};
_list = CONTROL(232920,232929);
if (_rank <= 2) exitWith {closeDialog 0;};


/*
switch (FETCH_CONST(life_gigadmin863)) do
{
    case 1: {ctrlShow [2904,false];ctrlShow [2905,false];ctrlShow [2906,false];ctrlShow [2907,false];ctrlShow [2908,false];ctrlShow [2909,false];ctrlShow [2910,false];ctrlShow [2911,false];};
    case 2: {ctrlShow [2905,false];ctrlShow [2906,false];ctrlShow [2907,false];ctrlShow [2908,false];ctrlShow [2909,false];ctrlShow [2910,false];ctrlShow [2911,false];};
    case 3: {ctrlShow [2907,false];ctrlShow [2908,false];ctrlShow [2909,false];ctrlShow [2910,false];ctrlShow [2911,false];};
    case 4: {ctrlShow [2911,false];};
};
*/

//Purge List
lbClear _list;

{
    if (side _x isEqualTo west) then {
		private _rankP  = _x getVariable ["rank", 0]; 
		_rankText = [_rankP] call life_fnc_copRankToString;
		_list lbAdd format["%1 - %2", _x getVariable ["realname",name _x],_rankText];
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	}; 
} forEach playableUnits;

if (GVAR_MNS ["mLaw", false]) then {
	_mLaw = ((findDisplay 232920) displayCtrl 232923);
	_mLaw ctrlSetBackgroundColor [0, 255, 0, 1]; 	// Green
	_mLaw ctrlSetTooltip "Marshal Law is currently active!"; //Change ToolTip
};

if (player getVariable ["offDuty", false]) then {
	_oD = ((findDisplay 232920) displayCtrl 232926);
	_oD ctrlSetTooltip "You are already off duty, press on duty to return!"; //Change ToolTip
	_oD ctrlEnable false; 
};
if (!license_cop_swatMaster) then {
    ctrlShow [232931,false];
    ctrlShow [232932,false];
};

if (!license_cop_detectiveL) then {
    ctrlShow [232941,false];
    ctrlShow [232942,false];
};


/*
if (life_god) then {
    _godmode = CONTROL(2900,2908);
    _godmode ctrlSetTextColor [0, 255, 0, 1];    // green
};
if (life_markers) then {
    _markers = CONTROL(2900,2910);
    _markers ctrlSetTextColor [0, 255, 0, 1];    // green
};
*/