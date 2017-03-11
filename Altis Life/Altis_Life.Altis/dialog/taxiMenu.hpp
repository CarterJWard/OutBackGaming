class life_taxiMenu {
    idd = 9347;
    movingEnabled = false;

    class controls {
        class MainBackground: Life_RscText {
            idc = -1;
            colorBackground[] = {0,0,0,0.7};
            x = 0.314375 * safezoneW + safezoneX;
            y = 0.313 * safezoneH + safezoneY;
            w = 0.315722 * safezoneW;
            h = 0.352 * safezoneH;
        };
           
        class RscListbox_1500: Life_RscListbox
        {
            idc = 98871;
            x = 0.349903 * safezoneW + safezoneX;
            y = 0.324 * safezoneH + safezoneY;
            w = 0.155273 * safezoneW;
            h = 0.143 * safezoneH;
        };
        class RscButton_1600: Life_RscButton
        {
            idc = 98872;
            text = "On Duty"; //--- ToDo: Localize;
            x = 0.349903 * safezoneW + safezoneX;
            y = 0.489 * safezoneH + safezoneY;
            w = 0.0414061 * safezoneW;
            h = 0.055 * safezoneH;
            tooltip = "Go On Duty"; //--- ToDo: Localize;
            onButtonClick = "[] call life_fnc_onDuty";
        };
        class RscButton_1601: Life_RscButton
        {
            idc = 98873;
            text = "Off Duty"; //--- ToDo: Localize;
            x = 0.349903 * safezoneW + safezoneX;
            y = 0.555 * safezoneH + safezoneY;
            w = 0.0414061 * safezoneW;
            h = 0.055 * safezoneH;
            tooltip = "Go Off Duty"; //--- ToDo: Localize;
            onButtonClick = "[] call life_fnc_offDuty";
        };
        class RscButton_1602: Life_RscButton
        {
            idc = 98874;
            text = "Accept Job"; //--- ToDo: Localize;
            x = 0.525879 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.103515 * safezoneW;
            h = 0.044 * safezoneH;
            tooltip = "Accept This Job"; //--- ToDo: Localize;
            onButtonClick = "[] call life_fnc_acceptJob";
        };
        class RscButton_1603: Life_RscButton
        {
            idc = 1603;
            text = "Call Taxi"; //--- ToDo: Localize;
            x = 0.432715 * safezoneW + safezoneX;
            y = 0.489 * safezoneH + safezoneY;
            w = 0.0828122 * safezoneW;
            h = 0.055 * safezoneH;
            tooltip = "Call for a taxi driver"; //--- ToDo: Localize;
            onButtonClick = "[] call life_fnc_callTaxi";
        };
        class RscButton_1604: Life_RscButton
        {
            idc = 1604;
            text = "Close"; //--- ToDo: Localize;
            x = 0.448242 * safezoneW + safezoneX;
            y = 0.566 * safezoneH + safezoneY;
            w = 0.0414061 * safezoneW;
            h = 0.055 * safezoneH;
            tooltip = "Close The Menu"; //--- ToDo: Localize;
        };
    };
};

