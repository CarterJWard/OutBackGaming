#include "..\..\script_macros.hpp"
if(FETCH_CONST(life_adminlevel) < 4) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
private _playerStatus = if (life_admin_playerMarkers) then {"ON"} else {"OFF"};
private _vehicleStatus = if (life_admin_vehicleMarkers) then {"ON"} else {"OFF"};

_result = [format["Player markers are currently %1<br/>Vehicle markers are currently %2",_playerStatus,_vehicleStatus], "Admin Markers", "Player", "Vehicle"] call BIS_fnc_guiMessage;
if (_result) then 
    {
        if (life_admin_playerMarkers) then 
        {
            life_admin_playerMarkers = false;
            [0,format["Admin %1 has turned off player markers",profileName]] remoteExec ["life_fnc_broadcast",RCLIENT];
            hint "player markers off";
        } else {
            life_admin_playerMarkers = true;
            [0,format["Admin %1 has turned on player markers",profileName]] remoteExec ["life_fnc_broadcast",RCLIENT];
            hint "player markers on";
        };
    } else {
        if (life_admin_vehicleMarkers) then 
        {
            life_admin_vehicleMarkers = false;
            [0,format["Admin %1 has turned off vehicle markers",profileName]] remoteExec ["life_fnc_broadcast",RCLIENT];
            hint "vehicle markers off";
        } else {
            life_admin_vehicleMarkers = true;
            [0,format["Admin %1 has turned on vehicle markers",profileName]] remoteExec ["life_fnc_broadcast",RCLIENT];
            hint "vehicle markers on";
        };    
    };
