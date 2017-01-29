/*
file name: ADconfig.sqf
Author: Larry Lancelot (Original concept by RYANTT)
Description: when called on server init starts a timer to then call the script. also has weapon config for the drop
*/
private ["_min","_max","_waitTime"];

//Timer
_min = 1800;
_max = random(14400);
_waitTime = (_min + _max);
sleep _waitTime;
remoteExec "TON_fnc_airdrop";
//Weapon config
    //LMG
    //ar
    //ar 2
    //mags
    //misc items
