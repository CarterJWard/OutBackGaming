/*
	File: fn_copMarkers.sqf
	Edited By: Fresqo
	Description: sorts cop markers and death markers
*/
private _markers = [];
private _units = [];
private _medicsOnline = {_x != player && {side _x isEqualTo independent} && {alive _x}} count playableUnits > 0;

{
    _units pushBack ["ColorBLUFOR",_x,"Mil_dot",_x getVariable["realname",name _x]];
} forEach units group player;

{
    _name = _x getVariable "name";
    _down = _x getVariable ["Revive",false];
    if (!isNil "_name" && !_down && !_medicsOnline) then 
    {
        _units pushBack ["ColorRed",_x,"loc_Hospital",_x getVariable["realname",name _x]];
    };
} forEach allDeadMen;
	
{
    if ((_x select 1) != player) then 
    {
        private _marker = createMarkerLocal [format["%1_marker",(_x select 1)],visiblePosition (_x select 1)];
        _marker setMarkerColorLocal (_x select 0);
        _marker setMarkerTypeLocal (_x select 2);
        _marker setMarkerTextLocal format["%1", (_x select 3)];
        _markers pushBack [_marker,(_x select 1),_x select 3,_x select 2];
    };	
} forEach _units;

while {(_this select 0)} do 
{
	if (!visibleMap) exitWith {{deleteMarkerLocal (_x select 0);} forEach _markers;};
	{
		private["_marker","_unit"];
		_marker = _x select 0;
		_unit = _x select 1;
		if !(_x select 3 isEqualTo "loc_Hospital") then {
		    if (!isNil "_unit" && !isNull _unit) then 
		    {
		    	_marker setMarkerPosLocal (visiblePosition _unit);
		    };
		};
	} forEach _markers;
	sleep 0.02;
};
