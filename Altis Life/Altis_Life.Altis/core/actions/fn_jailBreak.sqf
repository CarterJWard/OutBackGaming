#include "..\..\script_macros.hpp"
/**/
private ["_gate"];
diag_log "Started boom process";
_gate = jail_gate;
    if (_gate getVariable ["bombPlaced",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyPlaced"};
     if (west countSide playableUnits < (LIFE_SETTINGS(getNumber,"jailBreak_cops"))) exitWith { hint format [localize "STR_Civ_NotEnoughCops",(LIFE_SETTINGS(getNumber,"jailBreak_cops"))]};
     if (!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {}; //handleinv error
     _gate setVariable ["bombPlaced",true,true];

     ["Jail Break","Someone has begun a jail Break. all units are to respond",[204,0,0,1]] remoteExecCall ["life_fnc_broadcast",west];
     _handle = [] spawn life_fnc_jailBreakTimer;
    [] remoteExec ["life_fnc_jailBreakTimer",west];
    waitUntil {scriptDone _handle};

    //Boom
    
    _boom = "Bo_GBU12_LGB_MI10" createVehicle [0,0,9999];
    _boom setPos (getPos jail_gate);
    _boom setVelocity [100,0,0];
    [_gate] remoteExec ["TON_fnc_jailGate",RANY];
    //cool down till the gate can be destoyed again.
    sleep 2400;
    _gate setVariable ["bombPlaced",false,true];
