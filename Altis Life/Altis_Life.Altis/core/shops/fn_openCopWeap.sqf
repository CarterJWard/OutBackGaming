/*
file fn_openCopWeap
Description: Gets the cop level and opens the appropriate menu
*/
private ["_shop","_copPlayerRank"];
_copPlayerRank = player getVariable ["rank",0];
_shops = [h1_3,h1_3_2,h1_3_2,h1_3_3];
_copPlayerRankText = [_copPlayerRank] call life_fnc_copRankToString;
_shop = switch (_copPlayerRank) do {
    case 0: {"cop_basic"};
    case 1: {"cop_cadet"};
    case 2: {"cop_constable"};
    case 3: {"cop_incSncConstable"};
    case 4: {"cop_snrConstable"};
    case 5: {"cop_lsnrConstable"};
    case 6: {"cop_sergeant"};
    case 7: {"cop_incSergeant"};
    case 8: {"cop_snrSergeant"};
    case 9: {"cop_inspector"};
    case 10: {"cop_cheifInspector"};
    case 11: {"cop_superintendent"};
    case 12: {"cop_csuperintendent"};
    case 13: {"cop_commissioner"};
    default: {""};
};
{
_x addAction ["Weapon Shop",life_fnc_weaponShopMenu, _shop,0,false,false,"","",5];
} forEach _shops;

