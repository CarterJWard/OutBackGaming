#include "..\..\..\script_macros.hpp"
/*
    File: fn_copMenu.sqf
    Author: !TS JORDAN

    Description:
    Opens the cop menu.
*/
private["_display","_list","_rankText"];

private _rank = FETCH_CONST(life_coplevel);
if (_rank <= 2) exitWith {closeDialog 0;};

disableSerialization;

waitUntil {!isNull (findDisplay 232920)};
_list = CONTROL(232920,232929);
if (_rank <= 2) exitWith {closeDialog 0;};


/*
switch (FETCH_CONST(life_adminlevel)) do
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
    if (playerSide isEqualTo west) then {
		private _rankP  = _x getVariable ["rank", 0]; 
		_rankText = [_rankP] call life_fnc_copRankToString;
		_list lbAdd format["%1 - %2", _x getVariable ["realname",name _x],_rankText];
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	}; 
} forEach playableUnits;
if (_rank <= 2) exitWith {closeDialog 0;};

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