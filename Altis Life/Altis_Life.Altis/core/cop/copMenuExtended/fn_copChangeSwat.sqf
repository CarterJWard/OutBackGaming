/*Author: Larry Lancelot*/
params [
	["_player", objNull, [objNull]],
    ["_type", false, [false]]
];

if( isNull _player) exitWith {};

_player missionNamespace setVariable ["swat",_type];
