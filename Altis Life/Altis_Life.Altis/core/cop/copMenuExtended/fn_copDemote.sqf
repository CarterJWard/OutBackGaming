#include "..\..\..\script_macros.hpp"
/* 
	File: fn_copDemote.sqf
	Author: !TS JORDAN
*/
private["_copPlayer","_copPlayerRank","_copPlayerRankText"];
_copPlayer = lbData[232929,lbCurSel (232929)];
_copPlayer = call compile format["%1", _copPlayer];
if(isNil "_copPlayer") exitwith {};
if(isNull _copPlayer) exitWith {};
_copPlayerRank = _copPlayer getVariable ["rank",0];

if((life_gigcoplevel25) < 7) exitWith {
	hint "You are not high enough rank to use this feature!"; 
	closeDialog 0;
};


if(_copPlayer isEqualTo player) exitWith {
	hint "You cannot demote yourself!"; 
};


if(side _copPlayer != west) exitWith {
	hint "You cannot demote somebody who is not currently playing as a cop";
}; 

if (_copPlayerRank < 1) exitWith {
	hint "This player can not be demoted any further";
};

if (_copPlayerRank > 7) exitwith {
	hint "You Must use an admin to demote this player";
};

_copPlayerRank = _copPlayerRank - 1;
_copPlayerRankText = [_copPlayerRank] call life_fnc_copRankToString;
[1,format["Oops! You have been demoted to %1 by %2",_copPlayerRankText,name player]] remoteExec ["life_fnc_broadcast",_copPlayer];
hint format ["You have demoted %1 to %2",name _copPlayer,_copPlayerRankText];
[getPlayerUID _copPlayer,_copPlayerRank] remoteExecCall ["life_fnc_copLevelChange",RSERV];

_copPlayer setVariable ["rank",_copPlayerRank,TRUE];
closeDialog 0;