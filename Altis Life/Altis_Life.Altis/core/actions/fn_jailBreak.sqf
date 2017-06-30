#include "..\..\script_macros.hpp"
/**/
private ["_gate","_timer"];
_gate = jail_gate;
_timer = (7*60);
    if (_gate getVariable ["bombPlaced",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyPlaced"};
     if (west countSide playableUnits < (LIFE_SETTINGS(getNumber,"jailBreak_cops"))) exitWith { hint format [localize "STR_Civ_NotEnoughCops",(LIFE_SETTINGS(getNumber,"jailBreak_cops"))]};
     if (!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {}; //handleinv error
     _gate setVariable ["bombPlaced",true,true];

     //Notify
     [3,"<t size='1.5'><t color='#e02124'><t align='center'><t font='TahomaB'><t underline='true'>Jail Break<br /><br/></t></t></t></t></t><t size ='1.2'>Rebels have placed a bomb on the jail wall in Kavala. All units must respond. These individuals are considered armed and dangerous.</t>"] remoteExec ["life_fnc_broadcast", west];
     [3,"<t size='1.5'><t color='#e02124'><t align='center'><t font='TahomaB'><t underline='true'>Jail Break<br /><br/></t></t></t></t></t><t size ='1.2'>Authorities have confirmed that rebels are attempting a jail break. Civilians are urged to stay away as this is a active combat situtation and anyone in the area may be shot. Thankyou</t>"] remoteExec ["life_fnc_broadcast", civilian];
     [0,[_gate,_timer,"Mil_dot","Jail Break in progress"]] remoteExec ["life_fnc_markers",civilian];
     [0,[_gate,_timer,"Mil_dot","Jail Break in progress"]] remoteExec ["life_fnc_markers",west];
     
    [] spawn life_fnc_jailBreakTimer;
    [] remoteExec ["life_fnc_jailBreakTimer",west];
    sleep (13*30);
     
    //Alert others near
    { if (_x distance _gate < 100) then {_near pushBack _x};} forEach playableUnits;
    [2,"GET BACK FROM THE GATE IT'S GONNA BLOW"] remoteExec ["life_fnc_broadcast",_near];
    sleep 30;
    
    //Boom
    _boom = "Bo_GBU12_LGB_MI10" createVehicle [0,0,9999];
    _boom setPos (getPos jail_gate);
    _boom setVelocity [100,0,0];
    [_gate] remoteExec ["TON_fnc_jailGate",RANY];
    
    //cool down till the gate can be destoyed again.
    sleep 2400;
    _gate setVariable ["bombPlaced",false,true];
