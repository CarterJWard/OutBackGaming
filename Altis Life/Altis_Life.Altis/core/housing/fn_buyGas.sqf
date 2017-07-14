#include "..\..\script_macros.hpp"
/*
    File: fn_buyHouse.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Buys the house?
*/
private["_house","_uid","_action","_houseCfg"];
_house = param [0,ObjNull,[ObjNull]];
_uid = getPlayerUID player;

if (isNull _house) exitWith {};
if (!(_house isKindOf "")) exitWith {};
if (_house getVariable ["house_owned",false]) exitWith {hint localize "STR_House_alreadyOwned";};
if (!isNil {(_house getVariable "house_sold")}) exitWith {hint localize "STR_House_Sell_Process"};
if (!license_civ_shopOwner) exitWith {hint localize "STR_Shop_License"};
if (count life_gasStations >= (LIFE_SETTINGS(getNumber,"gas_limit"))) exitWith {hint format[localize "STR_House_Max_Gas",LIFE_SETTINGS(getNumber,"gas_limit")]};
closeDialog 0;

_houseCfg = [(typeOf _house)] call life_fnc_gasCfg;
if (count _houseCfg isEqualTo 0) exitWith {};

_action = [
    format[localize "STR_Gas_BuyMSG",
    [(_houseCfg select 0)] call life_fnc_numberText], localize "STR_Gas_Purchase",localize "STR_Global_Buy",localize "STR_Global_Cancel"
] call BIS_fnc_guiMessage;

if (_action) then {
    if (BANK < (_houseCfg select 0)) exitWith {hint format [localize "STR_House_NotEnough"]};
    BANK = BANK - (_houseCfg select 0);
	[] call life_fnc_hudUpdate;
    if (life_HC_isActive) then {
        [_uid,_house] remoteExec ["HC_fnc_addGas",HC_Life];
    } else {
        [_uid,_house] remoteExec ["TON_fnc_addGas",RSERV];
    };

    [1] call SOCK_fnc_updatePartial;

    if (LIFE_SETTINGS(getNumber,"player_advancedLog") isEqualTo 1) then {
        if (LIFE_SETTINGS(getNumber,"battlEye_friendlyLogging") isEqualTo 1) then {
            advanced_log = format ["bought a house for $%1. Bank Balance: $%2  On Hand Cash: $%3",[(_houseCfg select 0)] call life_fnc_numberText,[BANK] call life_fnc_numberText,[CASH] call life_fnc_numberText];
        } else {
            advanced_log = format ["%1 - %2 bought a house for $%3. Bank Balance: $%4  On Hand Cash: $%5",profileName,(getPlayerUID player),[(_houseCfg select 0)] call life_fnc_numberText,[BANK] call life_fnc_numberText,[CASH] call life_fnc_numberText];
        };
        publicVariableServer "advanced_log";
    };

    _house setVariable ["house_owner",[_uid,profileName],true];
    _house setVariable ["uid",floor(random 99999),true];

    life_vehicles pushBack _house;
    life_gasStations pushBack [str(getPosATL _house),[]];
    _marker = createMarkerLocal [format["house_%1",(_house getVariable "uid")],getPosATL _house];
    _houseName = FETCH_CONFIG2(getText,"CfgVehicles",(typeOf _house), "displayName");
    _marker setMarkerTextLocal _houseName;
    _marker setMarkerColorLocal "ColorGreen";
    _marker setMarkerTypeLocal "loc_Lighthouse";
};
