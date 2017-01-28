class life_cop_menu {
    idd = 232920;
    name= "life_cop_menu";
    movingEnable = 0;
    enableSimulation = 1;
    onLoad = "[] spawn life_fnc_copMenu;";

    class controlsBackground {
        class MainBackground: Life_RscText {
            idc = -1;
            colorBackground[] = {0,0,0,0.7};
            x = 0.314375 * safezoneW + safezoneX;
            y = 0.313 * safezoneH + safezoneY;
            w = 0.37125 * safezoneW;
            h = 0.396 * safezoneH;
        };

        class Life_RscTitleBackground: Life_RscText {
            idc = -1;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
            text = "Cop Menu Extended";
            x = 0.314375 * safezoneW + safezoneX;
            y = 0.291 * safezoneH + safezoneY;
            w = 0.37125 * safezoneW;
            h = 0.022 * safezoneH;
        };
    };

    class controls {
        class RscButtonMenu_2400: Life_RscButtonMenu {
            idc = -1;
            text = "$STR_Global_Close";
            onButtonClick = "closeDialog 0;";
            x = 0.324687 * safezoneW + safezoneX;
            y = 0.643 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class RscButtonMenu_2402: Life_RscButtonMenu {
            idc = -1;
            text = "Promote Cop";
			tooltip = "Promote the selected cop";
            onButtonClick = "[] call life_fnc_copPromote;";
            x = 0.396875 * safezoneW + safezoneX;
            y = 0.643 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class RscButtonMenu_2403: Life_RscButtonMenu {
            idc = 232921;
            text = "Demote Cop";
			tooltip = "Demote the selected cop";
            onButtonClick = "[] call life_fnc_copDemote;";
            x = 0.469062 * safezoneW + safezoneX;
            y = 0.643 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class RscButtonMenu_2404: Life_RscButtonMenu {
            idc = 232922;
            text = "Blacklist Cop";
			tooltip = "Blacklist the selected cop";
            onButtonClick = "[] call life_fnc_copBlacklist;";
            x = 0.54125 * safezoneW + safezoneX;
            y = 0.643 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class RscButtonMenu_2405: Life_RscButtonMenu {
            idc = 232923;
            text = "Marshall Law";
			tooltip = "This is currently a WIP.";
            //onButtonClick = "[] call life_fnc_adminTeleport; hint 'Select where you would like to teleport';";
            x = 0.613437 * safezoneW + safezoneX;
            y = 0.643 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class RscButtonMenu_2401: Life_RscButtonMenu {
            idc = 232924;
            text = "Checkpoint";
			tooltip = "This is currently a WIP.";
            //onButtonClick = "[] call life_fnc_adminTpHere;";
            x = 0.324687 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class RscButtonMenu_2406: Life_RscButtonMenu {
            idc = 232925;
            text = "Msg All";
			tooltip = "This is currently a WIP.";
            //onButtonClick = "[] call life_fnc_adminGodMode;";
            x = 0.396875 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

		
        class RscButtonMenu_2407: Life_RscButtonMenu {
            idc = 232926;
            text = "OffDuty";
            //onButtonClick = "[] call life_fnc_adminFreeze;";
			tooltip = "This is currently a WIP.";
            x = 0.469062 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class RscButtonMenu_2408: Life_RscButtonMenu {
            idc = 232927;
            text = "OnDuty";
			tooltip = "This is currently a WIP.";
            //onButtonClick = "[] spawn life_fnc_adminMarkers;closeDialog 0;";
            x = 0.54125 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };
		/*
        class RscButtonMenu_2409: Life_RscButtonMenu {
            idc = 232928;
            text = "$STR_Admin_Debug";
            onButtonClick = "[] call life_fnc_adminDebugCon;";
            x = 0.613437 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };
		*/

        class PlayerList_Admin: Life_RscListBox {
            idc = 232929;
            text = "";
            sizeEx = 0.035;
            //onLBSelChanged = "[_this] spawn life_fnc_adminQuery";
            x = 0.324687 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.159844 * safezoneW;
            h = 0.275 * safezoneH;
        };

        class PlayerBInfo: Life_RscStructuredText {
            idc = 232930;
            text = "";
            x = 0.489687 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.185625 * safezoneW;
            h = 0.275 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
        };
    };
};