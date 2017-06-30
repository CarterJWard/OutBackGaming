/*
file: fn_callTaxi
Author: Larry Lancelot
Description allows job to be shown in the list box
*/
//Setup variables
private[];

//Error Checks
if (life_taxi_onDuty) exitWith {hint "you cannot call a taxi whilst you're on duty";}; //localize
if (player getVariable ["TaxiCall",false]) exitWith {hint "You have already called a taxi"};

//add player to on call list
player setVariable ["TaxiCall", true, true];

