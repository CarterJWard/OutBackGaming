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

class CraftingCfg 
{
  
  //WEAPONS
    class weapon 
    {
        title = "Weapons";
        list[] = {
            { "launch_B_Titan_F", { "goldbar", 10 } }
        };
    };
    
    class magazine
    {
        title = "Ammunition";
        list[] = {
            { "Titan_AA", { "goldbar", 3} }
        };
    };
  //CLOTHING
    class uniform
    {
        title = "Uniforms";
        list[] = {
            { "U_O_V_Soldier_Viper_F", { "goldbar", 3 , "marijuana", 10 } },
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
            { "V_PlateCarrier1_tna_F", { "marijuana", 5, "iron_refined", 4 } }
        };
    };
    
  //MISC
    class misc {
        title = "Misc Items";
        list[] = {
            { "muzzle_snds_338_sand", { "goldbar", 5, "iron_refined", 10 } },
            { "muzzle_snds_93mmg", { "goldbar", 5 , "iron_refined", 15} },
            { "muzzle_snds_H", { "goldbar", 2 , "copper_unrefined", 15 } },
            { "muzzle_snds_B", { "goldbar", 3 , "iron_refined", 10 } },
            { "NVGoggles", { "iron_refined", 10, "copper_unrefined", 10 } },
            { "H_HelmetO_ViperSP_hex_F", { "goldbar", 10, "iron_refined", 10 } }
        };
    };
    
  //ITEM
    class item {
        title = "Items";
        list[] = {
            { "boltcutter", { "iron_refined", 10, "copper_refined", 10 } },
            { "blastingcharge", { "iron_refined", 10, "copper_refined", 10 } },
            { "firewood", { "logs",3 } },
            { "spikeStrip", {"iron_refined", 35} }
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
