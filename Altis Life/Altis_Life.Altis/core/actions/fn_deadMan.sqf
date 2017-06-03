/*
Author: Larry Lancelot
Desc: Sets deadman to true when the deadman switch is triggered.
*/
private ["_boom"];
["Suicide Vest", "You have activated your deadman switch, There is no going back now!",nil,""] call life_fnc_showNotification;

player addEventHandler ["Killed",{
    _boom = "Bo_Mk82" createVehicle [0,0,9999];
    _boom setPos (getPos player);
    _boom setVelocity [100,0,0];
    systemChat ["1% has detonated a suicide vest",profileName];
}];
//Boom


life_isSuicide = false;