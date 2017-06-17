#include "..\..\..\script_macros.hpp"
/* 
	File: fn_copBlacklist.sqf
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
	hint "You cannot blacklist yourself!"; 
};


if(side _copPlayer != west) exitWith {
	hint "You cannot demote somebody who is not currently playing as a cop";
}; 

_copPlayerRank = 0;
[1,format["Oops! You have been blacklisted by %1",name player]] remoteExec ["life_fnc_broadcast",_copPlayer];
hint format ["You have blacklisted %1",name _copPlayer];
[getPlayerUID _copPlayer,_copPlayerRank] remoteExecCall ["life_fnc_copBlacklistServer",RSERV];
[name player] remoteExec ["life_fnc_copFailMission", _copPlayer]; 

_copPlayer setVariable ["rank",_copPlayerRank,TRUE];
closeDialog 0;