/*
Author: Larry Lancelot
*/
private ["_copPlayer","_curlevel"];
_copPlayer = lbData[232929,lbCurSel (232929)];
_copPlayer = call compile format["%1", _copPlayer];
//Error Checks
if (!(playerSide isEqualTo west)) exitWith {};
if(isNil "_copPlayer") exitwith {};
if(isNull _copPlayer) exitWith {};
if(side _copPlayer != west) exitWith {}; 
if (!license_cop_swatMaster) exitWith {hint "You are not a Swat Commander"};

[5] remoteExecCall ["life_fnc_removeLicenses",_copPlayer];
[1,format["You have been discharged from swat %1",name player]] remoteExec ["life_fnc_broadcast",_copPlayer];
hint format ["You have discharged %1 to swat ",name _copPlayer];