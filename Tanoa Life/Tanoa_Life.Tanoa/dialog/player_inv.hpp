#include "player_sys.sqf"

class playerSettings {
    idd = playersys_DIALOG;
    movingEnable = 1;
    enableSimulation = 1;

    class controlsBackground {

           class playermenutexture: life_RscPicture
        {
            idc = 9090909;
            text = "textures\Tablet.paa";
            x = 0;
            y = -0.12;
            w = 1.05;
            h = 1.28;
        };

        class Life_RscTitleBackground: Life_RscText {
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
            idc = -1;
            x = 0.1;
            y = 0.2;
            w = 0;
            h = (1 / 25);
        };

        class MainBackground: Life_RscText {
            colorBackground[] = {0, 0, 0, 0};
            idc = -1;
            x = 0.1;
            y = 0.2 + (11 / 250);
            w = 0.0;
            h = 0.6 - (22 / 250);
        };

        class Title: Life_RscTitle {
            colorBackground[] = {0, 0, 0, 0.0};
            idc = -1;
            text = "";
            x = -0.2;
            y = 0.2;
            w = 0.4;
            h = (1 / 25);
        };


        class moneyStatusInfo: Life_RscStructuredText {
            idc = 2015;
            sizeEx = 0.020;
            text = "";
            x = 0.65;
            y = 0.30;
            w = 0.25;
            h = 0.6;
        };

        class PlayersName: Title {
            idc = carry_weight;
            style = 1;
            text = "";
            x = -0.1;
            h = 0.05;
        };
    };

    class controls {
        class itemHeader: Life_RscText {
            idc = -1;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0])", 0};
            text = "$STR_PM_cItems";
            sizeEx = 0.04;
            x = 0.12;
            y = 0.26;
            w = 0.275;
            h = 0.04;
        };

        class licenseHeader: Life_RscText {
            idc = -1;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0])", 0};
            text = "$STR_PM_Licenses";
            sizeEx = 0.04;
            x = 0.376;
            y = 0.26;
            w = 0.275;
            h = 0.04;
        };

        class moneySHeader: Life_RscText {
            idc = -1;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0])", 0};
            text = "$STR_PM_MoneyStats";
            sizeEx = 0.04;
            x = 0.66;
            y = 0.26;
            w = 0.219;
            h = 0.05;
        };

        class itemList: Life_RscListBox {
            idc = item_list;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0])", 0};
            sizeEx = 0.030;
            x = 0.12;
            y = 0.30;
            w = 0.215;
            h = 0.3;
        };

        class moneyEdit: Life_RscEdit {
            idc = 2018;
            text = "1";
            sizeEx = 0.030;
            x = 0.67;
            y = 0.42;
            w = 0.18;
            h = 0.03;
        };

        class NearPlayers: Life_RscCombo {
            idc = 2022;
            x = 0.67;
            y = 0.46;
            w = 0.18;
            h = 0.03;
        };

        class moneyDrop: Life_RscButtonMenu {
            idc = 2001;
            text = "$STR_Global_Give";
            colorBackground[] = {0, 0, 0, 0.5};
            onButtonClick = "[] call life_fnc_giveMoney";
            sizeEx = 0.025;
            x = 0.755;
            y = 0.50;
            w = 0.1;
            h = 0.036;
        };

        class itemEdit: Life_RscEdit {
            idc = item_edit;
            text = "1";
            sizeEx = 0.030;
            x = 0.12;
            y = 0.61;
            w = 0.215;
            h = 0.03;

        };

        class iNearPlayers: Life_RscCombo {
            idc = 2023;
            x = 0.12;
            y = 0.65;
            w = 0.215;
            h = 0.03;
        };

        class DropButton: Life_RscButtonMenu {
            idc = 2002;
            text = "$STR_Global_Give";
            colorBackground[] = {0, 00, 00, 0.5};
            onButtonClick = "[] call life_fnc_giveItem;";
            x = 0.21;
            y = 0.70;
            w = (3.25 / 40);
            h = (1 / 25);
        };

        class UseButton: Life_RscButtonMenu {
            text = "$STR_Global_Use";
            colorBackground[] = {00, 00, 00, 0.5};
            onButtonClick = "[] call life_fnc_useItem;";
            x = 0.12;
            y = 0.70;
            w = (3.25 / 40);
            h = (1 / 25);
        };

        class RemoveButton: Life_RscButtonMenu {
            text = "$STR_Global_Remove";
            colorBackground[] = {00, 00, 00, 0.5};
            onButtonClick = "[] call life_fnc_removeItem;";
            x = 0.305;
            y = 0.70;
            w = (4.25 / 40);
            h = (1 / 25);
        };

        class ButtonClose: Life_RscButtonMenu {
            idc = -1;
            //shortcuts[] = {0x00050000 + 2};
            text = "$STR_Global_Close";
            onButtonClick = "closeDialog 0;";
            x = 0.125;
            y = 0.9 - (1 / 25);
            w = (6.25 / 40);
            h = (1 / 25);
        };

        class ButtonSettings: Life_RscButtonMenu {
            idc = -1;
            text = "$STR_Global_Settings";
            onButtonClick = "[] call life_fnc_settingsMenu;";
            x = 0.285;
            y = 0.9 - (1 / 25);
            w = (6.25 / 40);
            h = (1 / 25);
        };

        class ButtonMyGang: Life_RscButtonMenu {
            idc = 2011;
            text = "$STR_PM_MyGang";
            onButtonClick = "if (isNil ""life_action_gangInUse"") then {if (isNil {(group player) getVariable ""gang_owner""}) then {createDialog ""Life_Create_Gang_Diag"";} else {[] spawn life_fnc_gangMenu;};};";
            x = 0.445;
            y = 0.9 - (1 / 25);
            w = (6.25 / 40);
            h = (1 / 25);
        };

        class Licenses_Menu : Life_RscControlsGroupNoScrollbars {
            idc = -1;
            w = 0.28;
            h = 0.38;
            x = 0.34;
            y = 0.30;

            class Controls {
                class Life_Licenses: Life_RscStructuredText {
                    idc = 2014;
                    sizeEx = 0.020;
                    text = "";
                    x = 0;
                    y = 0;
                    w = 0.27;
                    h = 0.65;
                };
            };
        };

        class ButtonGangList: Life_RscButtonMenu {
            idc = 2012;
            text = "$STR_PM_WantedList";
            onButtonClick = "[] call life_fnc_wantedMenu";
            x = 0.445;
            y = 0.9 - (1 / 25);
            w = (6.25 / 40);
            h = (1 / 25);
        };

        class ButtonKeys: Life_RscButtonMenu {
            idc = 2013;
            text = "$STR_PM_KeyChain";
            onButtonClick = "createDialog ""Life_key_management"";";
            x = 0.605;
            y = 0.9 - (1 / 25);
            w = (6.25 / 40);
            h = (1 / 25);
        };

        class ButtonCell: Life_RscButtonMenu {
            idc = 2014;
            text = "$STR_PM_CellPhone";
            onButtonClick = "createDialog ""Life_cell_phone"";";
            x = 0.765;
            y = 0.9 - (1 / 25);
            w = (6.25 / 40);
            h = (1 / 25);
        };

        class ButtonAdminMenu: Life_RscButtonMenu {
            idc = 2021;
            text = "$STR_PM_AdminMenu";
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
            onButtonClick = "createDialog ""life_admin_menu"";";
            x = 0.67;
            y = 0.56;
            w = 0.18;
            h = (1 / 25);
        };
		
		class ButtonAdminMarket: Life_RscButtonMenu {
            idc = 2020;
            text = "$STR_Admin_Market";
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
            onButtonClick = "createDialog ""life_dynmarket_changeprice"";";
            x = 0.67;
            y = 0.56 + (1 / 25);
            w = 0.18;
            h = (1 / 25);
        };

        class ButtonSyncData: Life_RscButtonMenu {
            idc = -1;
            //shortcuts[] = {0x00050000 + 2};
            text = "$STR_PM_SyncData";
            onButtonClick = "[] call SOCK_fnc_syncData;";
            x = 0.125;
            y = 0.8;
            w = (6.25 / 40);
            h = (1 / 25);
        };

	class ButtonCraft : Life_RscButtonMenu {
	    idc = 2025;
	    text = "$STR_PM_Craft";
	    onButtonClick = "createDialog ""Life_craft"";";
	    x = 0.605; 
	    y = 0.8;
	    w = (6.25 / 40);
	    h = (1 / 25);
	};

	class ProfButton : life_RscButtonMenu {
	    idc = -1;
	    text = "$STR_PM_Proficiency";
	    onButtonClick = "[] call life_fnc_profSetUp;";
	    x = 0.765;
	    y = 0.8;
	    w = (6.25 / 40);
	    h = (1 / 25);
	};
    class ButtonMarket : Life_RscButtonMenu {
        idc = 3025;
        text = "Market";
        onButtonClick = "createDialog ""life_dynmarket_prices"";";
        x = 0.445;
        y = 0.8;
        w = (6.25 / 40);
        h = (1 / 25);
    };
    };
};
