if (isDedicated) exitwith {};
private["_car"];
_car = _this select 0;
_car execVM "\A3L_CVPI\PoliceData\Scripts\lightbar.sqf";
_car execVM "\A3L_CVPI\PoliceData\Scripts\sirens.sqf";
_car execVM "\A3L_CVPI\PoliceData\Scripts\alley.sqf";
_car execVM "\A3L_CVPI\PoliceData\Scripts\takedown.sqf";
_car execVM "\A3L_CVPI\PoliceData\Scripts\directional.sqf";
_car execVM "\A3L_CVPI\PoliceData\Scripts\radar_new.sqf";

exit;