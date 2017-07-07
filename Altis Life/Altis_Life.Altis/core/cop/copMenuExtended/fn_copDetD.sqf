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
if (!license_cop_detectiveL) exitWith {hint "You are not detective lead"};

[7] remoteExecCall ["life_fnc_removeLicenses",_copPlayer];
[1,format["You have been discharged from Detectvie by %1",name player]] remoteExec ["life_fnc_broadcast",_copPlayer];
hint format ["You have discharged %1 from detective ",name _copPlayer];