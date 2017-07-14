/*Author : Larry Lancelot*/
params ["_owner", "_price"];
_online = false;
_buyer = player;
{if(getPlayerUID _x == _owner) then {_online = true; _unit = _x};} foreach allPlayers;
if (_online) then {
    [_buyer,_value] remoteExecCall ["life_fnc_gasRecieve",_unit]; 
};