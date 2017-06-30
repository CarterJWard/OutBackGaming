class life_taxiMenu {
    idd = 22901;
    name= "life_taxiMenu";
    movingEnable = 0;
    enableSimulation = 1;

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
            text = "$STR_Admin_Title";
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
            text = "$STR_Admin_GetID";
            onButtonClick = "[] call life_fnc_callTaxi;";
            x = 0.396875 * safezoneW + safezoneX;
            y = 0.643 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class RscButtonMenu_2403: Life_RscButtonMenu {
            idc = 2904;
            text = "On Duty";
            onButtonClick = "[] call life_fnc_onDuty;";
            x = 0.469062 * safezoneW + safezoneX;
            y = 0.643 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class RscButtonMenu_2404: Life_RscButtonMenu {
            idc = 2905;
            text = "Off Duty";
            onButtonClick = "[] call life_fnc_offDuty;";
            x = 0.54125 * safezoneW + safezoneX;
            y = 0.643 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class JobList: Life_RscListBox {
            idc = 30096;
            text = "";
            sizeEx = 0.035;
            onLBSelChanged = "[_this] call life_fnc_acceptJob;";
            x = 0.324687 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.159844 * safezoneW;
            h = 0.275 * safezoneH;
        };

        class PlayerBInfo: Life_RscStructuredText {
            idc = 2903;
            text = "";
            x = 0.489687 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.185625 * safezoneW;
            h = 0.275 * safezoneH;
            colorBackground[] = {0,0,0,0.7};
        };
    };
};