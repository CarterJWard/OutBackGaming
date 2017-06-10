/**/
private ["_vault"];
_gate = param [0,ObjNull,[ObjNull]];
    if (_gate getVariable ["bombPlaced",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyPlaced"};
     if (west countSide playableUnits < (LIFE_SETTINGS(getNumber,"jailBreak_cops"))) exitWith { hint format [localize "STR_Civ_NotEnoughCops",(LIFE_SETTINGS(getNumber,"jailBreak_cops"))]};
     if (!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {}; //handleinv error
     _vault setVariable ["bombPlaced",true,true];

     [0,"STR_ISTR_Blast_Placed"] remoteExecCall ["life_fnc_broadcast",west];
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
    //cool down till the gate can be destoyed again.
    sleep 2400;
    jail_gate setVariable ["bombPlaced",false,true];
