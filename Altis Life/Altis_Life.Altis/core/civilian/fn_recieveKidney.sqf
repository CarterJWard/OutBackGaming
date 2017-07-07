/*Author: Larry Lancelot*/
params [
    ["_victim",objNull,[objNull]],
    ["_robber",objNull,[objNull]] 
];

if (life_HC_isActive) then {
            [getPlayerUID player,player getVariable ["realname",name player],"48"] remoteExecCall ["HC_fnc_wantedAdd",HC_Life];
        } else {
            [getPlayerUID player,player getVariable ["realname",name player],"48"] remoteExecCall ["life_fnc_wantedAdd",RSERV];
        };
[true,"kidney", 1] call life_fnc_handleInv;