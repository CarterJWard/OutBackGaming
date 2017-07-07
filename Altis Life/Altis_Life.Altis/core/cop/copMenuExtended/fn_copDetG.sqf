#include "..\..\..\script_macros.hpp"
/*
Author: Larry Lancelot
*/
private ["_copPlayer","_curlevel"];
_copPlayer = lbData[232929,lbCurSel (232929)];
_copPlayer = call compile format["%1", _copPlayer];
_copPlayerRank = _copPlayer getVariable ["rank",0];
//Error Checks
if (!(playerSide isEqualTo west)) exitWith {};
if(isNil "_copPlayer") exitwith {};
if(isNull _copPlayer) exitWith {};
if(side _copPlayer != west) exitWith {}; 
if (!license_cop_detectiveL) exitWith {hint "You are not lead detevtive"};
if (_copPlayerRank < 1) exitWith {hint "The player needs to be a higher rank"};

[6] remoteExecCall ["life_fnc_removeLicenses",_copPlayer];
[1,format["Congratulations! You have been promoted to %1 by %2","Detective",name player]] remoteExec ["life_fnc_broadcast",_copPlayer];
hint format ["You have promoted %1 to Detective",name _copPlayer];