/*
	File: IntroCam
	Author: Dexter, edited by Genetic.
	( script might already be known, havent seen it yet though )
*/
private ["_camera", "_camDistance","_randCamX","_randCamY","_camTime"];
_camDistance = 1500;
_randCamX = 1450 - floor(random 1450);
_randCamY = 1 - floor(random 10);
_camTime = 15;// you can change the time for sure, I adjusted mine to the intro music

// the one below basically says that if you already joined the server once the time of the camera movement will be faster, else it might get annoying

if(!life_firstSpawn) then {
	_camTime = 15;
};

for "_x" from 0 to 20 do
{
   _x cutRsc ["introLife","PLAIN"];
};

//intro move
showCinemaBorder true;
camUseNVG false;



player allowDamage true;
enableEnvironment false;

if (playerSide == west) then {
player say2d "CopIntro";
} else{
player say2d "Intro";
};

player allowDamage true;
enableEnvironment false;

_camera = "camera" camCreate [(position player select 0)+_randCamX, (position player select 1)+_randCamY,(position player select 2)+_camDistance];
_camera cameraEffect ["internal","back"];

_camera camSetFOV 2.000;
_camera camCommit 1;
waitUntil {camCommitted _camera};

_camera camSetTarget vehicle player;
_camera camSetRelPos [0,5,2];
_camera camCommit _camTime;

waitUntil {camCommitted _camera};

_camera cameraEffect ["terminate","back"];
camDestroy _camera;
life_firstSpawn = false;
