#include "..\..\..\script_macros.hpp"
/*
	file: fn_copLevelChangeClient
	Author: !TS JORDAN
*/

params [
	["_player", objNull, [objNull]],
	["_rank", 0, [0]]
];

if( isNull _player) exitWith {};

_player setVariable ["rank",_rank,TRUE];
life_gigcoplevel25 = _rank;