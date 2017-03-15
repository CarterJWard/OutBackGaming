/*
File: fn_taxiLoad
Author: Larry Lancelot
Description: Loads all information for taxi drivers when menu is opened
*/
private ["_noLicense"];
//Setup Vars
_noLicense = false;


//Check if player has a taxi license
if (!license_civ_taxi) then {_noLicense = true};

//If player doesn't have a license then hide these buttons.
createDialog "life_taxiMenu";
disableSerialization;
if (!license_civ_taxi) then {
    ctrlShow[98871,false];
    ctrlShow[98872,false];
    ctrlShow[98873,false];
    ctrlShow[98874,false];
    ctrlShow[16003,true];
    ctrlShow[16004,true];
};

