#include "..\..\script_macros.hpp"
if(FETCH_CONST(life_adminlevel) < 2) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
private["_type"];
_type = [_this,0,false,[false]] call BIS_fnc_param;
if (_type) then {life_adminAction = false};

if(life_adminAction) then {
		//[4,[profileName]] remoteExec ["TON_fnc_logs",RSERV];

		hint "admin actions off";
		{player removeAction _x} forEach admin_actions;
		life_adminAction = false;
} else {
		//[4,[profileName,true]] remoteExec ["TON_fnc_logs",RSERV];
		hint "admin actions on";
		admin_actions = [player addAction["<t color='#FF0000'>Heal/Repair Target</t>",{cursorTarget setDamage 0;}]];
		admin_actions = admin_actions + [player addAction["<t color='#FF0000'>Impound Target</t>",{_vehicle = cursorTarget; [_vehicle,true,player] remoteExec ["TON_fnc_vehicleStore",RSERV];}]];
		admin_actions = admin_actions + [player addAction["<t color='#FF0000'>Get Keys Target</t>",{_vehicle = cursorTarget;life_vehicles pushBack _vehicle;}]];
		admin_actions = admin_actions + [player addAction["<t color='#FF0000'>Get Vehicle Owners</t>",{_vehicle = cursorTarget;[_vehicle] spawn life_fnc_searchVehAction;}]];
		admin_actions = admin_actions + [player addAction["<t color='#FF0000'>Refuel Target</t>",{_vehicle = cursorTarget; _vehicle setFuel 1;}]];
    		admin_actions = admin_actions + [player addAction["<t color='#FF0000'>Get Target Name</t>",{hint format["%1", typeOf cursorObject]; diag_log (typeOf cursorObject);copyToClipboard (typeOf cursorObject);}]];
		admin_actions = admin_actions + [player addAction["<t color='#FF0000'>Log my position</t>",{diag_log format["%2 POSITION: %1",getPos player,name player];hint format["Logged your position to the report log: %1",getPos player];}]];
		admin_actions = admin_actions + [player addAction["give rebel license to target",{if (!isNull cursorTarget && isPlayer cursorTarget) then {["","","","rebel","admingive"] remoteExec ["life_fnc_buyLicense",cursorTarget];};}]];
		life_adminAction = true;
};
