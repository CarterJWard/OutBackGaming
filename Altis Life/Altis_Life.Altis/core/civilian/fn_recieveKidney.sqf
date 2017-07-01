/*Author: Larry Lancelot*/
params [
    ["_victim",objNull,[objNull]],
    ["_robber",objNull,[objNull]] 
];

if (life_HC_isActive) then {
            [getPlayerUID _robber,_robber getVariable ["realname",name _robber],"48"] remoteExecCall ["HC_fnc_wantedAdd",HC_Life];
        } else {
            [getPlayerUID _robber,_robber getVariable ["realname",name _robber],"48"] remoteExecCall ["life_fnc_wantedAdd",RSERV];
        };
[true,"kidney", 1] call life_fnc_handleInv;