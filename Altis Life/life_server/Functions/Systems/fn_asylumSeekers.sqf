/*
    file: fn_asylumSeekers.sqf
	Author: Fresqo
	Description: spawns asylum seekers at some locations with a civ location to take seekers to and a cop location to take seekers to and get paid. kos marker and side dependant on drop markers
    Future Release: i will put some flares in and some more dynamics.		
*/

/* ::: SETTINGS ::: */
uiSleep (60 * 30); //time before shit starts
uiSleep random(1200); //another timer but random before mission starts
private _pos = [[789.47,17010.953,0.2]]; //spawn locations for asylum seekers
private _dropLocs = [[3744.357,10152.765,0.00144958],[2891.673,21459.525,0.00144005],[9422.462,22647.887,-0.25851]]; //drop off locations for asylum seekers
private _value = 200000; //payout when seeker sorted
private _headGears = []; //if you want the asylum seekers to have custom headgear put the classnames here
private _amount = 3; //amount of asylum seekers (definite)
private _random = 2; //amount of extra chance asylum seekers
private _timer = (30 * 60); //timer for the whole mission
private _cMarker = "cop_ship_1"; //cop marker name where cops can take seekers and get money
private _copsNeeded = 4;

/* ::: DO NOT TOUCH BELOW ::: */
private _spawnPos = _pos select floor random count _pos;
private _dropLoc = _dropLocs select floor random count _dropLocs;
private _time = time;
if ({side _x isEqualTo west} count playableUnits < _copsNeeded) exitWith {[] execVM "\life_server\Functions\Systems\fn_asylumSeekers.sqf";};

private _cnt = round(random(_random));
private _seekers = [];
for "_i" from 1 to (_cnt + _amount) do 
{
    _unit = ([[0,0,999], 180, "C_man_1", civilian] call bis_fnc_spawnvehicle) select 0;
    _spawnPos set[0,(_spawnPos select 0)+random(30)];
    _spawnPos set[1,(_spawnPos select 1)+random(30)];
	if (count _headGears > 0) then 
	{
        _headGear = _headGears select floor random count _headGears;
        _unit addHeadgear _headGear;
	};
    _unit setPos _spawnPos;
    _unit setVariable["asylumseeker",true,true];
    _seekers pushBack _unit;
};

/* CREATE MARKERS AND MESSAGES */
[3,"<t size='1.2'><t color='#FF0000'>Asylum Seeker Mission</t></t><br/><br/><t size='1'>An asylum seeker boat has capsized. The rebels are paying top price for their clear entrance into Australia, go pick them up in a boat and take them to the drop point!</t>"] remoteExec ["life_fnc_broadcast",civilian];
[0,[_spawnPos,_timer,"Mil_dot","Asylum Seekers"]] remoteExec ["life_fnc_markers",civilian];
[0,[_dropLoc,_timer,"Mil_dot","Asylum Seeker Drop Zone"]] remoteExec ["life_fnc_markers",civilian];

FNC_seeker = 
{
    params [
    "_seeker",
	"_dropLoc",
	"_value",
	"_timer",
	"_mark"
    ];
    private _cnt = 0;
    while {alive _seeker} do 
    {
        private _objs = nearestObjects [_seeker, [], 10];
	if (count _objs > 0 && (vehicle _seeker isEqualTo _seeker)) then 
	{
	    {
		if (_x isKindOf "Ship" && !(_seeker getVariable["inboat",false]) && isPlayer (driver _x)) exitWith 
		{
		    _seeker moveInCommander _x;
		    _seeker moveInGunner _x;
     		    _seeker moveInCargo _x;
		    _seeker setVariable ["inboat",true,true];
	        };
	    } forEach _objs;
        };
	    if ((_seeker distance (getMarkerPos _mark) < 20) && (_seeker getVariable ["inboat",false])&& side (driver (vehicle _seeker)) isEqualTo west) exitWith 
	    {
	        _payee = driver (vehicle _seeker);
            if (isNull _payee) exitWith {diag_log "ASYLUM BUG1 RPT1"};
	        [_value] remoteExec ["life_fnc_payCash",_payee];
	        [0,format["You have received $%1 for bringing an asylum seeker back to PD for proper processing",_value]] remoteExec ["life_fnc_broadcast",_payee];	
	        (vehicle _seeker) deleteVehicleCrew _seeker;
	    };	
        if (_seeker distance _dropLoc < 30 && (_seeker getVariable ["inboat",false]) && side (driver (vehicle _seeker)) isEqualTo civilian) exitWith
        {
	    _payee = driver (vehicle _seeker);
            if (isNull _payee) exitWith {diag_log "ASYLUM BUG1 RPT2"};
	    [_value] remoteExec ["life_fnc_payCash",_payee];
	    [0,format["You have received $%1 for smuggling an asylum seeker into Australia",_value]] remoteExec ["life_fnc_broadcast",_payee];
	    (vehicle _seeker) deleteVehicleCrew _seeker;
	};
    		
        uiSleep 2;
		if (vehicle _seeker isEqualTo _seeker && (_seeker getVariable["inboat",false])) then {_seeker setVariable["inboat",false,true];};
        _cnt = _cnt + 2;
        if (_cnt >= _timer) exitWith 
	{
	    if !(vehicle _seeker isEqualTo _seeker) then 
	    {
	        (vehicle _seeker) deleteVehicleCrew _seeker;
	    };
	    deleteVehicle _seeker;
	};
    };

    if (!isNull _seeker) then 
    {
	if !(vehicle _seeker isEqualTo _seeker) then 
	{
	    (vehicle _seeker) deleteVehicleCrew _seeker;
	};    
        deleteVehicle _seeker;
    };
};

{[_x,_dropLoc,_value,_timer,_cMarker] spawn FNC_seeker;} forEach _seekers;

[_spawnPos,_time,_timer] spawn 
{
    uiSleep 200;
    uiSleep random(300);
    _nuTime = (_this select 2) - (time - (_this select 1));
    [0,[(_this select 0),_nuTime,"Mil_dot","Asylum Seekers"]] remoteExec ["life_fnc_markers",west];
    [3,"<t size='1.2'><t color='#FF0000'>Asylum Seeker Mission</t></t><br/><br/><t size='1'>An asylum seeker boat has capsized. Word on the streets is they are getting help from Australian civilians to gain access to the country. Go get them by boat and bring them back to the boat yard!</t>"] remoteExec ["life_fnc_broadcast",west];
    [3,"<t size='1.2'><t color='#FF0000'>Asylum Seeker Mission</t></t><br/><br/><t size='1'>The police have been notified about the asylum seekers attempting to enter Australia!</t>"] remoteExec ["life_fnc_broadcast",civilian];
    _marker = createMarker ["AsylumSeekerKOS", (_this select 0)];
    "AsylumSeekerKOS" setMarkerColor "ColorRed";
    "AsylumSeekerKOS" setMarkerType "Empty";
    "AsylumSeekerKOS" setMarkerShape "ELLIPSE";
    "AsylumSeekerKOS" setMarkerSize [1500,1500];
    "AsylumSeekerKOS" setMarkerBrush "FDiagonal";	
};

uiSleep (_timer / 2);
[3,"<t size='1.2'><t color='#FF0000'>Asylum Seeker Mission</t></t><br/><br/><t size='1'>Half way through the Asylum Seeker mission!</t>"] remoteExec ["life_fnc_broadcast",-2];
uiSleep ((_timer / 2) - 60);
[3,"<t size='1.2'><t color='#FF0000'>Asylum Seeker Mission</t></t><br/><br/><t size='1'>One more minute until the Asylum Seeker mission is finished!</t>"] remoteExec ["life_fnc_broadcast",-2];
uiSleep 60;
[3,"<t size='1.2'><t color='#FF0000'>Asylum Seeker Mission</t></t><br/><br/><t size='1'>The Asylum Seeker mission has finished!</t>"] remoteExec ["life_fnc_broadcast",-2];

if !(getMarkerColor "AsylumSeekerKOS" isEqualTo "") then 
{
    "AsylumSeekerKOS" setMarkerAlpha 0;
    deleteMarker "AsylumSeekerKOS";
};
uiSleep (60*45);
[] execVM "\life_server\Functions\Systems\fn_asylumSeekers.sqf";