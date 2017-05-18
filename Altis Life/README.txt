//ADD THE FOLLOWING INTO core/fn_survival.sqf just above "//Setup the time-based variables." ADJUST THE PLANES AS SPECIFIED
[] spawn {
    while {true} do {
        if (playerSide isEqualTo civilian && !life_mission) then {
            waitUntil {typeOf (vehicle player) in ["sab_piper2","sab_FAAllegro","sab_RobinDR400_2"]}; //ADJUST THESE TO BE THE PLANE CLASS NAMES YOU ARE USING
            if (driver (vehicle player) isEqualTo player && life_inv_pesticide > 0 && speed (vehicle player) < 5) then 
            {
                private ["_startCD"];
                _startCD = player addAction["Start Crop Dusting Mission",life_fnc_cropDusting,[(vehicle player)]];	
	        waitUntil {(vehicle player isEqualTo player) || !alive player || speed (vehicle player) > 5};
	    
                if (!isNil "_startCD") then {
                    player removeAction _startCD;
                };
            };
        };
        sleep 1;
    };
};


//ADD A VARIABLE INTO THE class Life_Settings in config/Config_Master.hpp

crop_bonus = 150000;

//ADD SOME PUB VARIABLES TO CLIENT in core/configuration.sqf

life_mission = false; 
arrived = false;

//ADD THE FOLLOWING INTO Functions.hpp CLIENT SIDE in the class Functions area

        class cropDusting {};
        class cropDustingDone {};
		
//ADD THE FOLLOWING TO ANY SHOPS TO BUY ITEM in config/Config_vItems.hpp

"pesticide"

//AND BELOW IN THE SAME FILE ADD

    class pesticide {
        variable = "pesticide";
        displayName = "STR_Item_Pesticide";
        weight = 2;
        buyPrice = 500;
        sellPrice = -1;
        illegal = false;
	    savable = true;
        prof = "";
        edible = -1;
        icon = "icons\ico_pesticide.paa";
    };
	
//ADD THIS IN STRING TABLE WHERE OTHER ITEM STRINGS ARE

    <Key ID="STR_Item_Pesticide">
    	<Original>Pesticide</Original>
    </Key>
	
//PUT THE .paa FILE INTO THE icons FOLDER