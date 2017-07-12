/*
    DROP DOWN CRAFTABLE ITEMS
    CLASS
    
    LIST ARRAY RETURNS
      0 - STRING (Item class name)
      1 - ARRAY (items needed to craft)
          ARRAY RETURNS
              0 STRING
              1 NUMBER
              ETC
*/

class CraftingCfg {
  
  //WEAPONS
    class weapon 
    {
        title = "Weapons";
        list[] = {
            { "hgun_Pistol_heavy_01_snds_F", { "iron_refined", 1 } },
            { "hgun_Pistol_heavy_02_Yorris_F", { "iron_refined", 1 } }
        };
    };
    
  //CLOTHING
    class uniform
    {
        title = "Uniforms";
        list[] = {
            { "U_O_V_Soldier_Viper_F", { "goldbar", 3 } },
            { "U_I_FullGhillie_sard", { "marijuana", 10 } }
        };
    };
    
  //BACKPACKS
    class backpack
    {
        title = "Backpacks";
        list[] = {
            { "B_Carryall_oli", { "marijuana", 5 } }
        };
    };
    
  //VESTS
    class vest {
        title = "Vests";
        list[] = {
            { "V_PlateCarrier1_tna_F", { "marijuana", 5 } }
        };
    };
    
  //MISC
    class misc {
        title = "Misc Items";
        list[] = {
            { "6Rnd_45ACP_Cylinder", { "copper_refined", 1} },
            { "11Rnd_45ACP_Mag", { "copper_refined", 1} },
            { "muzzle_snds_338_sand", { "goldbar", 10 } },
            { "muzzle_snds_93mmg", { "goldbar", 10 } },
            { "muzzle_snds_H", { "goldbar", 5 } },
            { "muzzle_snds_B", { "goldbar", 8 } },
            { "NVGoggles", { "iron_refined", 10, "lockpick", 10 } },
            { "H_HelmetO_ViperSP_hex_F", { "goldbar", 10, "iron_refined", 10 } }
        };
    };
    
  //ITEM
    class item {
        title = "Items";
        list[] = {
            { "boltcutter", { "iron_refined", 10, "copper_refined", 10 } },
            { "blastingcharge", { "iron_refined", 10, "copper_refined", 10 } },
            { "firewood", { "logs",3 } }
        };
    };
    
  //VEHICLE
   class vehicle {
       title = "Vehicles";
       list[] = {
           { "B_HMG_01_F", { "iron_refined", 10, "goldbar", 1 } },
           { "B_SDV_01_F", { "iron_refined", 10, "copper_refined", 10 } }
       };
   };
};
