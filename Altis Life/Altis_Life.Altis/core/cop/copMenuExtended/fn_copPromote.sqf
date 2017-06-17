#include "..\..\..\script_macros.hpp"
/* 
	File: fn_copPromote.sqf
	Author: !TS JORDAN
*/
private["_copPlayer","_copPlayerRank","_copPlayerRankText"];
_copPlayer = lbData[232929,lbCurSel (232929)];
_copPlayer = call compile format["%1", _copPlayer];
if(isNil "_copPlayer") exitwith {};
if(isNull _copPlayer) exitWith {};
_copPlayerRank = _copPlayer getVariable ["rank",0];

if((life_gigcoplevel25) < 6) exitWith {
	hint "You are not high enough rank to use this feature!"; 
	closeDialog 0;
};


if(_copPlayer isEqualTo player) exitWith {
	hint "You cannot promote yourself!"; 
};


if(side _copPlayer != west) exitWith {
	hint "You cannot promote somebody who is not currently playing as a cop";
}; 

if (_copPlayerRank isEqualTo 5) exitWith {
	hint "This player is already the highest avaliable rank!";
};

_copPlayerRank = _copPlayerRank + 1;
_copPlayerRankText = [_copPlayerRank] call life_fnc_copRankToString;
[1,format["Congratulations! You have been promoted to %1 by %2",_copPlayerRankText,name player]] remoteExec ["life_fnc_broadcast",_copPlayer];
hint format ["You have promoted %1 to %2",name _copPlayer,_copPlayerRankText];
[getPlayerUID _copPlayer,_copPlayerRank] remoteExecCall ["life_fnc_copLevelChange",RSERV];
[_copPlayer, _copPlayerRank] remoteExec ["life_fnc_copLevelChangeClient",_copPlayer];

closeDialog 0;