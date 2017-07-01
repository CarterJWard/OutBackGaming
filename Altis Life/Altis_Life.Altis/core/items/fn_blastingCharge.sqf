#include "..\..\script_macros.hpp"
/*
    File: fn_blastingCharge.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Blasting charge is used for the federal reserve vault and nothing  more.. Yet.
*/
private["_vault","_handle"];
_vault = param [0,ObjNull,[ObjNull]];
//fed config
if (isNull _vault) exitWith {}; //Bad object
if (typeOf _vault isEqualTo "Land_CargoBox_V1_F") then {
    
    if (_vault getVariable ["chargeplaced",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyPlaced"};
    if (_vault getVariable ["safe_open",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyOpen"};
    if (west countSide playableUnits < (LIFE_SETTINGS(getNumber,"minimum_cops"))) exitWith {
        hint format [localize "STR_Civ_NotEnoughCops",(LIFE_SETTINGS(getNumber,"minimum_cops"))]
    };
    if ((nearestObject [[16019.5,16952.9,0],"Land_Research_house_V1_F"]) getVariable ["locked",true]) exitWith {hint localize "STR_ISTR_Blast_Exploit"};
    if (!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {}; //Error?

    _vault setVariable ["chargeplaced",true,true];
    [3,"<t size='1.5'><t color='#e02124'><t align='center'><t font='TahomaB'><t underline='true'>FEDERAL RESERVE<br /><br/></t></t></t></t></t><t size ='1.2'>The blasting charge has been placed on the vault. All units need to respond NOW. The attackers are considered armed and dangerous and lethal force is authorised on all armed persons in and around the area. The government has authorised full escaltion as large amount of goverment funds is stored there.</t>"] remoteExec ["life_fnc_broadcast", west];
    
    [3,"<t size='1.5'><t color='#e02124'><t align='center'><t font='TahomaB'><t underline='true'>FEDERAL RESERVE<br /><br/></t></t></t></t></t><t size ='1.2'>Authorities have confirmed that armed rebels have broken into the federal reserve. All citizens are ordered to keep away from the situation as these robbery may be heavily armed and extremely dangerous, Stay safe everyone.</t>"] remoteExec ["life_fnc_broadcast", civilian];
    hint localize "STR_ISTR_Blast_KeepOff";
    _handle = [] spawn life_fnc_demoChargeTimer;
    [] remoteExec ["life_fnc_demoChargeTimer",west];

    waitUntil {scriptDone _handle};
    sleep 0.9;
    if (!(fed_bank getVariable["chargeplaced",false])) exitWith {hint localize "STR_ISTR_Blast_Disarmed"};

    _bomb = "Bo_GBU12_LGB_MI10" createVehicle [getPosATL fed_bank select 0, getPosATL fed_bank select 1, (getPosATL fed_bank select 2)+0.5];
    fed_bank setVariable ["chargeplaced",false,true];
    fed_bank setVariable ["safe_open",true,true];

    hint localize "STR_ISTR_Blast_Opened";
    
    if (life_HC_isActive) then {
        [getPlayerUID player,profileName,"25"] remoteExecCall ["HC_fnc_wantedAdd",HC_Life];
    } else {
        [getPlayerUID player,profileName,"25"] remoteExecCall ["life_fnc_wantedAdd",RSERV];
    };
};

