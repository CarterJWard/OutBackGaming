/*
Setups random events that run throughout the server uptime
*/

//Settings
_airdropON = true;
_earthquake = true;

//Run the airdrop script
if (_airdropON = true) then {
    execVM "fn_config.sqf";
};

//Execute a earthquake every now and then
if (_earthquake = true) then {
    sleep 3600;
    [3] call BIS_fnc_earthquake;
    _timer2 = 2000;
    sleep _timer2;
};
