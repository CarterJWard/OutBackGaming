#include "..\..\script_macros.hpp"
/*
    File: fn_unrestrain.sqf
    Author:

    Description:

*/
private["_unit"];
_unit = param [0,ObjNull,[ObjNull]];
if(!([false,"keys",1] call life_fnc_handleInv)) exitWith { hint "You dont have Handcuff key's"; };
[true,"keys",1] call life_fnc_handleInv; // Remove if you want the keys a one time use. 
if (isNull _unit || !(_unit getVariable ["restrained",FALSE])) exitWith {}; //Error check?

_unit setVariable ["restrained",FALSE,TRUE];
_unit setVariable ["Escorting",FALSE,TRUE];
_unit setVariable ["transporting",FALSE,TRUE];
_unit setVariable["tied", nil, true];
_unit setVariable["gagged",false,true];
_unit setVariable["blindfolded", nil, true];
detach _unit;

[0,"STR_NOTF_Unrestrain",true,[_unit getVariable ["realname",name _unit], profileName]] remoteExecCall ["life_fnc_broadcast",west];