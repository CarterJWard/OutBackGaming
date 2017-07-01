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
        !isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && animationState cursorObject == "Incapacitated" && !(cursorObject getVariable["robbed",FALSE]) ']];
        life_actions = life_actions + [player addAction[localize "STR_pAct_RobKidney",life_fnc_takeKidney,"",0,false,false,"",'
        !isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && animationState cursorObject == "Incapacitated" && !(cursorObject getVariable["hasKidney",FALSE]) ']];
        //Loot 1: object 2: target
		life_actions = life_actions + [player addAction["<t color='#fdff01'>Loot</t>",life_fnc_loot,"2",0,false,false,"",'vehicle player isEqualTo player && (typeOf cursorTarget in["Land_i_Stone_HouseBig_V3_F","Land_u_House_Small_02_V1_F","Land_u_House_Big_01_V1_F","Land_u_House_Small_01_V1_F","Land_i_Stone_HouseBig_V2_F","Land_i_Stone_HouseBig_V1_F","Land_d_House_Small_01_V1_F","Land_Unfinished_Building_01_F","Land_u_House_Big_02_V1_F","Land_d_Addon_02_V1_F"]) && (vehicle player) distance cursorTarget < 5 && !((cursorTarget in (missionNamespace getVariable["looted",[]]))) && playerSide == civilian']];
		life_actions = life_actions + [player addAction["<t color='#fdff01'>Loot</t>",life_fnc_loot,"1",0,false,false,"",'(str cursorObject find ": garbage" > 0 || str cursorObject find ": plp_ct_trash" > 0 || str cursorObject find ": wreck" > 0 || str cursorObject find ": popelnice" > 0 || str cursorObject find ": kiosk" > 0 || str cursorObject find ": market_stalls" > 0 || str cursorObject find ": wheelie" > 0) && (vehicle player) distance cursorObject < 3 && playerSide isEqualTo civilian && !((cursorObject in (missionNamespace getVariable["looted",[]]))) ']];
		life_actions = life_actions + [player addAction["<t color='#fdff01'>Loot</t>",life_fnc_loot,"1",0,false,false,"",'(str cursorObject find ": paper" > 0 && cursorObject animationPhase ((animationNames cursorObject) select 0) > 0) && (vehicle player) distance cursorObject < 3 && playerSide isEqualTo civilian && !((cursorObject in (missionNamespace getVariable["looted",[]]))) ']];
        //Suicide alahsnackbar
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Activate Suicide Vest</t>",life_fnc_suicideBomb,"",0,false,false,"",' vest player == "V_HarnessOGL_gry" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Activate Deadman Switch</t>",life_fnc_deadMan,"",0,false,false,"",' vest player == "V_HarnessOGL_gry" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting") && !life_deadMan']];
    };
	
	case west: {
		life_actions = life_actions + (player addAction["Seize Objects",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']);
        life_actions = life_actions + (player addaction ["Barriers",life_fnc_barrier,[""],0,false,true,"","vehicle player == player and BarrierOpen == 0 and life_gigcoplevel25 > 2"]);
	};
};
life_actions pushBack (player addAction["<t color = '#D660D6'>Put on Seatbelt</t>",life_fnc_seatbelt,"",7,false,false,"",' !life_seatbelt && vehicle player != player ']);
life_actions pushBack (player addAction["<t color = '#D660D6'>Remove Seatbelt</t>",life_fnc_seatbelt,"",7,false,false,"",' life_seatbelt && vehicle player != player ']);
