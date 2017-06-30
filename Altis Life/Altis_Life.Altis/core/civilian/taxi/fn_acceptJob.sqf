/*
Author: Larry Lancelot
to DO. fancy colors n stuff
*/
private ["_dist","_unit"];
_unit = lbData[30096,lbCurSel (30096)];
_unit = call compile format["%1", _unit];
if (isNil "_unit") exitWith {};
if (isNull _unit) exitWith {};

_unit setVariable ["TaxiCall",false,true];
addMissionEventHandler ["Draw3D", {
	if (isNull player || !alive player || (life_taxiArrived)) exitWith {removeAllMissionEventHandlers "Draw3D";};
	_dist = (player distance _unit);
	drawIcon3D ["", [1,0,0,0.5], curPos, 0, 0, 0, format["Taxi Pickup %1m",_dist], 1, 0.05, "PuristaMedium"];
    }];
[player,vehicle player] remoteExec ["life_fnc_taxiGetIn",_unit];