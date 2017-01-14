/*
	File: fn_civMarkers.sqf
	Edited By: Fresqo
	Description: sorts civilian markers
*/
private _markers = [];
private _units = [];

{
    _units pushBack ["ColorCivilian",_x,"Mil_dot",_x getVariable["realname",name _x]];
} forEach units group player;
	
{
	if((_x select 1) != player) then 
	{
		private _marker = createMarkerLocal [format["%1_marker",(_x select 1)],visiblePosition (_x select 1)];
		_marker setMarkerColorLocal (_x select 0);
		_marker setMarkerTypeLocal (_x select 2);
		_marker setMarkerTextLocal format["%1", (_x select 3)];
		_markers pushBack [_marker,(_x select 1),_x select 3];
	};
} foreach _units;


while {(_this select 0)} do 
{
    if (!visibleMap) exitWith {{deleteMarkerLocal (_x select 0);} forEach _markers;};
	{
		private _marker = _x select 0;
		private _unit = _x select 1;
		if(!isNil "_unit" && !isNull _unit) then 
		{
			_marker setMarkerPosLocal (visiblePosition _unit);
		};
	} foreach _markers;
        sleep 0.02;
};
