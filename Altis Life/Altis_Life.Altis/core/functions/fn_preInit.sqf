/*Author, Killzone Kid*/
if (hasInterface) then {
    if (!isNumber (configFile >> "briefing")) exitWith {};
    if (getNumber (configFile >> "briefing") == 1) exitWith {};
    0 = [] spawn {
        waitUntil {
            if (getClientState == "BRIEFING READ") exitWith {true};
            if (!isNull findDisplay 52) exitWith {
                ctrlActivate (findDisplay 52 displayCtrl 1);
                findDisplay 52 closeDisplay 1;
                true
            };
            false
        };
    };
};