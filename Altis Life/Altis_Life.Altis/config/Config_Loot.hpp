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
            { "Goldbar","ymenu" },
            { "spikestrip", "ymenu" }
        };
    };
    
    class LootNorm {
    loot_norm[] = 
        { 
            {"diamond_cut", "ymenu" },
            { "lockpick" , "ymenu" },
            { "pesticide", "ymenu" }
        };
    };
    
    class LootEasy {
    loot_easy[] = 
        {  
            { "copper", "ymenu" },
            { "apple", "ymenu" },
            { "waterbottle", "ymenu" },
            { "peach", "ymenu" }
        };    
    };
};
