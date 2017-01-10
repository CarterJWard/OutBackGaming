/*
    File: fn_setupActions.sqf
    Author:

    Description:
    Master addAction file handler for all client-based actions.
*/
switch (playerSide) do {
    case civilian: {
        //Drop fishing net
        life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
        (surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
        
        //Rob person
        life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
        !isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && animationState cursorObject == "Incapacitated" && !(cursorObject getVariable ["robbed",false]) ']];
        
	//Loot 1: object 2: target
	life_actions = life_actions + [player addAction["<t color='#fdff01'>Loot</t>",life_fnc_loot,"2",0,false,false,"",'vehicle player isEqualTo player && (typeOf cursorTarget in["Land_i_Stone_HouseBig_V3_F","Land_u_House_Small_02_V1_F","Land_u_House_Big_01_V1_F","Land_u_House_Small_01_V1_F","Land_i_Stone_HouseBig_V2_F","Land_i_Stone_HouseBig_V1_F","Land_d_House_Small_01_V1_F","Land_Unfinished_Building_01_F","Land_u_House_Big_02_V1_F","Land_d_Addon_02_V1_F"]) && (vehicle player) distance cursorTarget < 5 && !((cursorTarget in (missionNamespace getVariable["looted",[]]))) && playerSide == civilian']];
	life_actions = life_actions + [player addAction["<t color='#fdff01'>Loot</t>",life_fnc_loot,"1",0,false,false,"",'(str cursorObject find ": garbage" > 0 || str cursorObject find ": plp_ct_trash" > 0 || str cursorObject find ": wreck" > 0 || str cursorObject find ": popelnice" > 0 || str cursorObject find ": kiosk" > 0 || str cursorObject find ": market_stalls" > 0 || str cursorObject find ": wheelie" > 0) && (vehicle player) distance cursorObject < 3 && playerSide isEqualTo civilian && !((cursorObject in (missionNamespace getVariable["looted",[]]))) ']];        
life_actions pushBack (player addAction["Take Elevator Up", 
{ 
    frezpos = getPos player;
    frezveh = cursorObject;
    titleText ["", "BLACK", 1]; 
    sleep 3;
    newPos = switch (typeOf frezveh) do
    {
        case "Land_MultistoryBuilding_03_F": {frezveh modelToWorld [-1,12,25]}; 
        case "Land_MultistoryBuilding_01_F": {frezveh modelToWorld [3,13,19]}; 
        case "Land_MultistoryBuilding_04_F": {frezveh modelToWorld [5,1.5,22]};
        case "Land_Shop_City_04_F": {frezveh modelToWorld [0,0,7]};
        case "Land_Shop_City_05_F": {frezveh modelToWorld [5,7,4.5]};
    };
    player setPosATL newPos;
    titleText ["", "BLACK IN",1];
    life_isElevated = true;
},"",0,false,false,"",'frezpos2 = switch (typeOf cursorObject) do 
	{
        case "Land_MultistoryBuilding_03_F": {[11.0981,-0.275879,-25.9095]};
        case "Land_MultistoryBuilding_01_F": {[9.55127,-11.7603,-21.0195]};
        case "Land_MultistoryBuilding_04_F": {[-8.37109,9.60547,-36.3054]};
        case "Land_Shop_City_04_F": {[0.471191,-9.49609,-3.96334]};
        case "Land_Shop_City_05_F": {[-0.132324,-9.73828,-7.50257]};
        default {[0,0,0]};
	};isNull (objectParent player) && player distance cursorObject < 50 && (typeOf cursorObject) in ["Land_MultistoryBuilding_03_F","Land_MultistoryBuilding_01_F","Land_MultistoryBuilding_04_F","Land_Shop_City_04_F","Land_Shop_City_05_F"] && ((getPosATL player) select 2) < 5 && player distance (cursorObject modelToWorld frezpos2) < 4']);

	
life_actions pushBack (player addAction["Take Elevator Down", 
{ 
    titleText ["", "BLACK", 1];
    sleep 3;
    player setPos frezpos;
    titleText ["", "BLACK IN",1];
    life_isElevated = false;
},"",0,false,false,"",'(player distance newPos) < 5 && alive player && life_isElevated && player distance frezveh < 100 && isNull (objectParent player) && (getPosATL player select 2) > 5']); 
    };
};
