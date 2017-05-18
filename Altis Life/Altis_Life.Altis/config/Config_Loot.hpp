/*
    Looting system
	INSTALLATION INSTRUCTIONS
	    - PLACE THIS FILE IN config/
*/

class LootCfg {
    class LootSettings {
        loot_rare_chance = 1; //PERCENTAGES 1/100
        loot_norm_chance = 5;
        loot_easy_chance = 40;
    };
    
    class LootRare {
    loot_rare[] = 
        { 
		/* ENTRY EXAMPLES
            { "engine","ymenu" }, 
            { "A3L_SuicideVest", "imenu" }
		*/
        };
    };
    
    class LootNorm {
    loot_norm[] = 
        { 
		/* ENTRY EXAMPLES
            { "engine","ymenu" }, 
            { "A3L_SuicideVest", "imenu" }
		*/
        };
    };
    
    class LootEasy {
    loot_easy[] = 
        {  
		/* ENTRY EXAMPLES
            { "engine","ymenu" }, 
            { "A3L_SuicideVest", "imenu" }
		*/
        };    
    };
};
