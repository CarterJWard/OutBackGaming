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
    [0,"STR_ISTR_Blast_Placed"] remoteExecCall ["life_fnc_broadcast",west];
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
};

//Jail Break
if (typeOf _vault isEqualTo jail_gate) then {
    if (_vault getVariable ["bombPlaced",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyPlaced"};
     if (west countSide playableUnits < (LIFE_SETTINGS(getNumber,"jailBreak_cops"))) exitWith { hint format [localize "STR_Civ_NotEnoughCops",(LIFE_SETTINGS(getNumber,"jailBreak_cops"))]};
     if (!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {}; //handleinv error
     _vault setVariable ["bombPlaced",true,true];

     _handle = [] spawn life_fnc_jailBreakTimer;
    [] remoteExec ["life_fnc_jailBreakTimer",west];
    waitUntil {scriptDone _handle};

    //Boom
    jail_gate hideObjectGlobal true;
    _boom = "Bo_GBU12_LGB_MI10" createVehicle [0,0,9999];
    _boom setPos (getPos jail_gate);
    _boom setVelocity [100,0,0];

    sleep 300;
    jail_gate hideObjectGlobal false;
    //cool down till the gate can be destoryed again
    sleep 2400;
    jail_gate setVariable ["bombPlaced",false,true];
};