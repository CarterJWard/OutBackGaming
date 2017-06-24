/*
Author: Larry Lancelot
Sorts some stuff
*/
private [];
_stage = [_this,0,0,[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;

switch (_stage) do {
   case: 0 {
        switch (_name) do {
        case: "Swat Blue" {player setVariable ["uniType", "Swat2",false]};
        case: "Swat Black" {player setVariable ["uniType", "Swat1",false]};
        case: default  {""};
        };
    };
    case 1: {
        switch (_name) do {
            case: "Swat1" {player setVariable ["uniType", "Swat1",false]};
            case: "Swat2" {player setVariable ["uniType", "Swat2",false]};
        };
    };
};