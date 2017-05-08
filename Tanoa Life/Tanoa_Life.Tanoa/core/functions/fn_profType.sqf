/*
file: fn_profType.sqf

*/
private ["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;


switch (_type) do {
    case "banana": {"Fruit_Prof"};
    case "pawpaw": {"Fruit_Prof"};
    case "logs": {"Logs_prof"};
    case "cociane_unprocessed": {"Cocaine_prof"};
    case "heroin_unprocessed": {"Heroin_Prof"};
    case "cannabis": {"Weed_Prof"} ;
    case "sugar": {"Sugar_Prof"};
    case "copper_unrefined": {"Metal_Prof"};
    case "iron_unrefined": {"Metal_Prof"};
    case "diamond_uncut": {"Diamond_Prof"};
    case "rock": {"Rock_Prof"};
    case "oil_unprocessed": {"Oil_Prof"};
    default {""};
};
