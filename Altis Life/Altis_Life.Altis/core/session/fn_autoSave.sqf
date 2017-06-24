/*Author: Larry Lancelot*/
sleep (60*30);
[] call SOCK_fnc_updateRequest;
systemChat "Player data has been saved";
sleep (60*5);
[] execVM "scripts\fn_autoSave.sqf";