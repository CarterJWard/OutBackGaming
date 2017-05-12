/*
    Looting system
*/

class LootCfg {
    class LootSettings {
        loot_rare_chance = 1; //PERCENTAGE 1-100
        loot_norm_chance = 5;
        loot_easy_chance = 40;
    };
    
    class LootRare {
    loot_rare[] = 
        { 
            { "storagesmall","ymenu" }, 
            { "storagebig","ymenu" }, 
            { "goldbar", "ymenu" },
            { "H_CrewHelmetHeli_B", "imenu" }
        };
    };
    
    class LootNorm {
    loot_norm[] = 
        { 
            { "toolkit","ymenu" }, 
            { "redgull","ymenu" }, 
            { "boltcutter", "ymenu" }
        };
    };
    
    class LootEasy {
    loot_easy[] = 
        {  
            { "banana", "ymenu" },
            { "pawpaw", "ymenu" },
            { "lockpick", "ymenu" },
            { "waterBottle", "ymenu" },
            { "pesticide", "ymenu" }
        };    
    };
};
