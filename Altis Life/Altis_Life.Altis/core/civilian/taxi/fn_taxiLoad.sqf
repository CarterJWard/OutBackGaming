/*
File: fn_taxiLoad
Author: Larry Lancelot
Description: Loads all information for taxi drivers when menu is opened
*/
private ["_list"];
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
