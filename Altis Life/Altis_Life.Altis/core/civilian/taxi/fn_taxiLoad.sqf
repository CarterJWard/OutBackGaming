/*
File: fn_taxiLoad
Author: Larry Lancelot
Description: Loads all information for taxi drivers when menu is opened
*/
private ["_license","_noLicense"];
//Setup Vars
_license = "taxi";
_noLicense = false;

//Check if player has a taxi license
if (!license_civ_taxi) then {_noLicense = true};
//If player doesn't have a license then hide these buttons.
if (_noLicense = true) then {
    ctrlShow[98871,false];
    ctrlShow[98872,false];
    ctrlShow[98873,false];
    ctrlShow[98874,false];
};

createDialog "life_taxiMenu";
