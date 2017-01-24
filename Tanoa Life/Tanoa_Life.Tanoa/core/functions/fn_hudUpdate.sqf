#include "..\..\script_macros.hpp"
/*
    File: fn_hudUpdate.sqf
    Author: Daniel Stuart

    Description:
    Updates the HUD when it needs to.

disableSerialization;

if (isNull LIFEdisplay) then {[] call life_fnc_hudSetup;};
LIFEctrl(2200) progressSetPosition (life_hunger / 100);
LIFEctrl(2201) progressSetPosition (1 - (damage player));
LIFEctrl(2202) progressSetPosition (life_thirst / 100);
*/
[] execVM "core\scripts\custHud.sqf";
/*
private _side = PROF_SIDE(playerSide);
private _prof = switch (playerSide) do {
    case civilian: {"pCiv"};
    case west: {"pCop"};
    case independent: {"pMed"};
    default {};
};
private _xpLevel = PROF_VALUE(_prof,_side) select 0;
private _xpAt = PROF_VALUE(_prof,_side) select 1;
private _nextLevel = _xpLevel * ( _xpLevel - 1) * 500; 
if(_nextLevel < 1) then {_nextLevel = 500;};
private _xpPercent = (_xpAt / _nextLevel);

LIFEctrl(2203) progressSetPosition _xpPercent;
LIFEctrl(1203) ctrlSetText format["Level:%1",_xpLevel];


((uiNamespace getVariable "playerHUD")displayCtrl 55554)ctrlSetText format[
"| Civs: %1 | Military: %2 | Medics: %3 | Cash: $%4 | Bank: $%5 |",
civilian countSide playableUnits, 
west countSide playableUnits,
independent countSide playableUnits,
[CASH] call life_fnc_numberText,
[BANK] call life_fnc_numberText
];
*/
