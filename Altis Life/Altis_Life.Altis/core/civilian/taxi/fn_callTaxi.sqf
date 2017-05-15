/*
file: fn_callTaxi
Author: Larry Lancelot
Description allows job to be shown in the list box
*/
//Setup variables
private[];

//Check if player is on duty.
if (life_taxi_onDuty = true;) exitWith {hint "you cannot call a taxi whilst you're on duty";}; //localize

//add player to on call list
life_taxi_call = true;
waitUntil {
    life_taxi_Accepted = true;
}; 
//
