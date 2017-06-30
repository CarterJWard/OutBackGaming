#include "..\..\..\script_macros.hpp"
/*
File: fn_taxiLoad
Author: Larry Lancelot
Description: Loads all information for taxi drivers when menu is opened
*/
private ["_list"];
//If player doesn't have a license then hide these buttons.
createDialog "life_taxiMenu";
disableSerialization;
if (!license_civ_taxi) then {
    ctrlShow[98871,false];
    ctrlShow[98872,false];
    ctrlShow[98873,false];
    ctrlShow[98874,false];
    ctrlShow[16003,true];
    ctrlShow[16004,true];
};

waitUntil {!isNull (findDisplay 22901)};
_list = CONTROL(22901,30096);
lbClear _list;
{
    if (!(getVariable ["TaxiCall", false])) then {
		_dist = 
		_list lbAdd format["%1 - %2", _x getVariable ["realname",name _x],_dist];
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	}; 
} forEach playableUnits;