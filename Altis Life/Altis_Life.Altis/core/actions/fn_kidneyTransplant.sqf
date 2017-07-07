#include "..\..\script_macros.hpp"
/*Author: Larry Lancelot*/
private ["_healCost","_action"];
if (life_action_inUse) exitWith {};
_healCost = LIFE_SETTINGS(getNumber,"hospital_kidneyTransplant");
if (CASH < _healCost) exitWith {hint format[localize "STR_NOTF_HS_NoCash",[_healCost] call life_fnc_numberText];};
if (life_hasKidney) exitWith {hint localize"STR_NOTF_NTN"};

life_action_inUse = true;
_action = [
    format [localize "STR_NOTF_HS_PopUpKidney",[_healCost] call life_fnc_numberText],
    localize "STR_NOTF_HS_TITLE",
    localize "STR_Global_Yes",
    localize "STR_Global_No"
] call BIS_fnc_guiMessage;

if (_action) then {
    titleText[localize "STR_NOTF_HS_Healing","PLAIN"];
    closeDialog 0;
    uiSleep 8;
    if (player distance (_this select 0) > 5) exitWith {life_action_inUse = false; titleText[localize "STR_NOTF_HS_ToFar","PLAIN"]};
    titleText[localize "STR_NOTF_HS_Healed","PLAIN"];
    player setDamage 0;
    CASH = CASH - _healCost;
    life_hasKidney = true;
    life_action_inUse = false;
} else {
	["Error", format [localize "STR_NOTF_ActionCancel"],[1,0,0,1],""] call life_fnc_showNotification;
    closeDialog 0;
    life_action_inUse = false;
};

[] call life_fnc_hudUpdate;