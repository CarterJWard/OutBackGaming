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
            colorBackground[] = {0.141,0.412,0.847,1};
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
			tooltip = "Call Marshall Law upon a city.";
            onButtonClick = "[] call life_fnc_copMarshallLaw;";
            x = 0.613437 * safezoneW + safezoneX;
            y = 0.643 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class RscButtonMenu_2401: Life_RscButtonMenu {
            idc = 232924;
            text = "Msg All";
			tooltip = "Public Service Announcment.";
            onButtonClick = "[] call life_fnc_copMsgAllAction;";
            x = 0.324687 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class RscButtonMenu_2406: Life_RscButtonMenu {
            idc = 232925;
            text = "OnDuty";
			tooltip = "Return to active Duty.";
            onButtonClick = "[] spawn life_fnc_copOnDuty;";
            x = 0.396875 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

		
        class RscButtonMenu_2407: Life_RscButtonMenu {
            idc = 232926;
            text = "OffDuty";
            onButtonClick = "[] call life_fnc_copOffDuty;";
			tooltip = "Let your coworkers know you are away.";
            x = 0.469062 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };


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
        
        class RscButtonMenu_2410: Life_RscButtonMenu {
            idc = 232931;
            text = "Train Swat";
			tooltip = "Gives the officer access to swat gear"; 
            onButtonClick = "[] call life_fnc_copSwatG;";
            x = 0.54125 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class RscButtonMenu_2411: Life_RscButtonMenu {
            idc = 232932;
            text = "Revoke Swat";
			tooltip = "Takes away swat training"; 
            onButtonClick = "[] call life_fnc_copSwatD;";
            x = 0.613437 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class RscButtonMenu_detective: Life_RscButtonMenu {
            idc = 232941;
            text = "Give Detective";
			tooltip = "Gives the officer access to detective Gear"; 
            onButtonClick = "[] call life_fnc_copDetG;";
            x = 0.54125 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class RscButtonMenu_detective_take: Life_RscButtonMenu {
            idc = 232942;
            text = "Revoke DET";
			tooltip = "Takes away detective training"; 
            onButtonClick = "[] call life_fnc_copDetD;";
            x = 0.613437 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };
    };
};