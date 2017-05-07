/*
Setups random events that run throughout the server uptime
*/

//Settings
_airdropON = true;
_earthquake = true;

//Run the airdrop script
if (_airdropON = true) then {
    sleep 3600;
    execVM "fn_airdrop.sqf";
    _timer = random(4200);
    sleep _timer;  
};

//Execute a earthquake every now and then
if (_earthquake = true) then {
    sleep 3600;
    [3] call BIS_fnc_earthquake;
    _timer2 = 2000;
    sleep _timer2;
};
