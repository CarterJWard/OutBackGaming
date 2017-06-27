/*
Author: Larry Lancelot
*/
private = ["_copPlayer","_curlevel"];
_copPlayer = lbData[232929,lbCurSel (232929)];
_copPlayer = call compile format["%1", _copPlayer];
//Error Checks
if (!(playerSide isEqualTo west)) exitWith {};
if(isNil "_copPlayer") exitwith {};
if(isNull _copPlayer) exitWith {};
if(side _copPlayer != west) exitWith {}; 
if (!license_cop_swatMaster) exitWith {hint "You are not a Swat Commander"};
_curlevel = _copPlayer missionNamespace getVariable "swat";
if (_curlevel isEqualTo true) exitWith {hint "Player is already on swat"};
_copPlayer missionNamespace setVariable ["swat",false];

_copPlayerRankText = [_copPlayerRank] call life_fnc_copRankToString;
[1,format["Congratulations! You have been promoted to Swat by %1",name player]] remoteExec ["life_fnc_broadcast",_copPlayer];
hint format ["You have been promoted %1 to swat ",name _copPlayer];