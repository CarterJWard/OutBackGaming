/*
    File: fn_initHouses.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Initalizes house setup when player joins the server.
*/
private["_queryResult","_query","_count"];
_count = (["SELECT COUNT(*) FROM gas WHERE owned='1'",2] call DB_fnc_asyncCall) select 0;

for [{_x=0},{_x<=_count},{_x=_x+10}] do {
    _query = format["SELECT gas.id, gas.pid, gas.pos, players.name FROM gas INNER JOIN players WHERE houses.owned='1' AND gas.pid = players.playerid LIMIT %1,10",_x];
    _queryResult = [_query,2,true] call DB_fnc_asyncCall;
    if (count _queryResult isEqualTo 0) exitWith {};
    {
        _pos = call compile format["%1",_x select 2];
        _house = nearestObject [_pos, "House"];
        _house setVariable["house_owner",[_x select 1,_x select 3],true];
        _house setVariable["house_id",_x select 0,true];
    } forEach _queryResult;
};
