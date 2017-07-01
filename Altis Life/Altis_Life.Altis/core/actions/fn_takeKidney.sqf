/*Author: Larry Lancelot*/
private["_target"];
_target = cursorObject;

//Error checks
if (isNull _target) exitWith {};
if (!isPlayer _target) exitWith {};

if (!(_target getVariable ["hasKidney",true])) exitWith {};
[player] remoteExecCall ["life_fnc_robKidney",_target];
_target setVariable ["hasKidney",false,true];
