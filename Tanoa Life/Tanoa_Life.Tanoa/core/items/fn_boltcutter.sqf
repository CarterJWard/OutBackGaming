#include "..\..\script_macros.hpp"
/*
    File: fn_boltcutter.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Breaks the lock on a single door (Closet door to the player).
*/
private ["_building","_door","_doors","_cpRate","_title","_progressBar","_titleText","_cp","_ui"];
_building = param [0,objNull,[objNull]];
private _ownerName = "";
private _home = false;
private _exit = false;
private _ex = false;
private _crate = false;

private _vaultHouse = ALTIS_TANOA("Land_Research_house_V1_F","Land_Medevac_house_V1_F");
_altisArray = [16019.5,16952.9,0];
_tanoaArray = [11074.2,11501.5,0.00137329];
private _pos = ALTIS_TANOA(_altisArray,_tanoaArray);

if (isNull _building) exitWith {};
if (typeOf _building != "I_CargoNet_01_ammo_F") then {
    if (!(_building isKindOf "House_F")) exitWith {hint localize "STR_ISTR_Bolt_NotNear"; _exit = true;};
};
if (_exit) exitWith {};

if (((nearestObject [_pos,"Land_Dome_Big_F"]) == _building || (nearestObject [_pos,_vaultHouse]) == _building) && (west countSide playableUnits < (LIFE_SETTINGS(getNumber,"minimum_cops")))) exitWith {
    hint format [localize "STR_Civ_NotEnoughCops",(LIFE_SETTINGS(getNumber,"minimum_cops"))]
};
if ((typeOf _building) isEqualTo _vaultHouse && (nearestObject [_pos,"Land_Dome_Big_F"]) getVariable ["locked",true]) exitWith {hint localize "STR_ISTR_Bolt_Exploit"};
if (isNil "life_boltcutter_uses") then {life_boltcutter_uses = 0;};
if ((typeOf _building) isEqualTo "I_CargoNet_01_ammo_F") then {_crate = true;};
private _copsCrate = LIFE_SETTINGS(getNumber,"copsCrateRaid");
if(({side _x isEqualTo west} count playableUnits < _copsCrate) && _crate) exitWith {hint format[localize "STR_Civ_NotEnoughCops",_copsCrate]};
if (!_crate) then {
_doors = FETCH_CONFIG2(getNumber,"CfgVehicles",(typeOf _building),"numberOfDoors");
_door = 0;
//Find the nearest door
for "_i" from 1 to _doors do {
    _selPos = _building selectionPosition format ["Door_%1_trigger",_i];
    _worldSpace = _building modelToWorld _selPos;
        if (player distance _worldSpace < 2) exitWith {_door = _i;};
};
if (_door isEqualTo 0) exitWith {hint localize "STR_Cop_NotaDoor"}; //Not near a door to be broken into.
if ((_building getVariable [format ["bis_disabled_Door_%1",_door],0]) isEqualTo 0) exitWith {hint localize "STR_House_Raid_DoorUnlocked";_ex = true;};
};
if (_ex) exitWith {};

if ((nearestObject [_pos,"Land_Dome_Big_F"]) == _building || (nearestObject [_pos,_vaultHouse]) == _building) then {
    //[[1,2],"STR_ISTR_Bolt_AlertFed",true,[]] remoteExecCall ["life_fnc_broadcast",RCLIENT];
    ["FEDERAL RESERVE","Armed persons have been spotted attempting to break into the federal reserve. Authorities urge all citizens to keep away as anyone with in the area with a weapon will be killed",nil,""] remoteExecCall ["life_fnc_showNotification", civilian];
} else {
        if (typeOf EQUAL(_building,"I_CargoNet_01_ammo_F")) then 
		    {
                ["Military Crate","Someone is trying to break into the military supply cache. get there before the gueriall's take their weapons back",[0.898,0.016,0.118,1],""] remoteExecCall ["life_fnc_showNotification",west];
			} else 
		        {
                    ["Break and enter",format ["%1 Was seen breaking into a house",profileName],nil,""] remoteExecCall ["life_fnc_showNotification",RCLIENT];
                };
};

private _uid = (_building getVariable ["house_owner",["",""]]) select 0;
if (_uid != "") then {_home = true};
if(_home && (!([_uid] call life_fnc_isUIDActive))) exitWith {hint "The owner is not online so you cannot raid this house!"};
private _coppas = LIFE_SETTINGS(getNumber,"copsHouseRaid");
if(({side _x == west} count playableUnits < _coppas) && _home) exitWith {hint format[localize "STR_Civ_NotEnoughCops",_coppas]};

life_action_inUse = true;

if (_home) then {
    private _unitsToNotify = [];
    {
        if (_uid isEqualTo (getPlayerUID _x) || side _x isEqualTo west) then {_unitsToNotify pushBack _x};
        if (_uid isEqualTo (getPlayerUID _x)) then {_ownerName = name _x};
    } forEach playableUnits;
    if (count _unitsToNotify isEqualTo 0) exitWith {};
    [1,[_building,60,"Mil_dot","HOUSE ROBBERY IN PROGRESS"]] remoteExec ["life_fnc_marks",_unitsToNotify];
    [1,format["%1s house is being broken into!",_ownerName]] remoteExecCall ["life_fnc_broadcast",_unitsToNotify];
};
if (_crate) then {[1,[_building,60,"Mil_dot"]] remoteExec ["life_fnc_marks",west];};
//Setup the progress bar
disableSerialization;
_title = localize "STR_ISTR_Bolt_Process";
"progressBar" cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format ["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

switch (typeOf _building) do {
    case "Land_Dome_Big_F": {_cpRate = 0.003;};
    case "Land_Medevac_house_V1_F": {_cpRate = 0.0015;};
    case "Land_Research_house_V1_F": {_cpRate = 0.0015;};
    case "I_CargoNet_01_ammo_F": {_cpRate = 0.002;};
    default {_cpRate = 0.01;}
};

for "_i" from 0 to 1 step 0 do {
    if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
        [player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["life_fnc_animSync",RCLIENT];
        player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
        player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
    };
    sleep 0.26;
    if (isNull _ui) then {
        "progressBar" cutRsc ["life_progress","PLAIN"];
        _ui = uiNamespace getVariable "life_progress";
        _progressBar = _ui displayCtrl 38201;
        _titleText = _ui displayCtrl 38202;
    };
    _cP = _cP + _cpRate;
    _progressBar progressSetPosition _cP;
    _titleText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_title];
    if (_cP >= 1 || !alive player) exitWith {};
    if (life_istazed) exitWith {}; //Tazed
    if (life_isknocked) exitWith {}; //Knocked
    if (life_interrupted) exitWith {};
};

//Kill the UI display and check for various states
"progressBar" cutText ["","PLAIN"];
player playActionNow "stop";
if (!alive player || life_istazed || life_isknocked) exitWith {life_action_inUse = false;};
if (player getVariable ["restrained",false]) exitWith {life_action_inUse = false;};
if (life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
life_boltcutter_uses = life_boltcutter_uses + 1;
life_action_inUse = false;

if (life_boltcutter_uses >= 5) then {
    [false,"boltcutter",1] call life_fnc_handleInv;
    life_boltcutter_uses = 0;
};

if (_crate) then {
	_building SVAR["locked",false,true];
	private _crateItems = GVAR_MNS ["dweapons",[]];
	if (count _crateItems > 0) then {{_building addWeaponCargoGlobal [_x,1];} forEach _crateItems};
	SVAR_MNS ["dweapons",[],true];
	["Alert",format["MILITARY ALERT - The military evidence crate has been robbed by %1",name player],nil,""] remoteExec ["life_fnc_showNotification",west];
	//[getPlayerUID player,profileName,"459",player] remoteExecCall ["life_fnc_wantedAdd",RSERV];
} else {
    _building setVariable [format ["bis_disabled_Door_%1",_door],0,true]; //Unlock the door.
    _building setVariable ["locked",false,true];
};

if (life_HC_isActive) then {
    [getPlayerUID player,profileName,"459"] remoteExecCall ["HC_fnc_wantedAdd",HC_Life];
} else {
    [getPlayerUID player,profileName,"459"] remoteExecCall ["life_fnc_wantedAdd",RSERV];
};
