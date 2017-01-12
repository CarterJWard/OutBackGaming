#include "..\..\script_macros.hpp"
/*
	Author: !TS JORDAN
	Des: Sets new amount for wanted hud
*/

_amount = [_this,0,0,[0]] call BIS_fnc_param;

_display = uiNameSpace getVariable "custHUD";
_wantedidc = _display displayCtrl 1106;

_wanted = [_amount] call life_fnc_numberText;

_wantedidc ctrlSetStructuredText (parseText format ["$%1",_wanted]); 