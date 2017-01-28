/*
    File: fn_copBlacklistServer.sqf
    Author: !TS JORDAN

    Description:
    Promoted the selected cop in the DB.
*/

params [
    ["_uid","",[""]],
    ["_level",0,[0]]
];
diag_log format ["I raN M8"];

if (_uid isEqualTo "") exitWith {}; 
_level = 0; 

_query = format ["UPDATE players SET coplevel = '%1', blacklist = 1 WHERE playerid ='%2'",_level,_uid];
private _queryResult = [_query,1] call DB_fnc_asyncCall;