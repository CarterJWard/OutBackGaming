/*
file: fn_robBank.sqf
Author: MrKraken
Description:
Executes the rob bank action!
*/
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_action = [_this,2] call BIS_fnc_param;//Action name
_rip = false; //Sets robbery in progress

if(side _robber != civilian) exitWith { hint "You can not rob this Gas Station!" };
if(_robber distance _shop > 5) exitWith { hint "You need to be within 5m of the cashier to rob him!" };
if (vehicle player != _robber) exitWith { hint "Get out of your vehicle!" };

if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "HaHa, you do not threaten me! Get out of here you hobo!" };
if (_rip) exitWith { hint "Robbery already in progress!" };

//Check for amount of cops online
_cops = (west countSide playableUnits);
if(_cops < 6) exitWith{hint "The bank is currently close as there is a low amount of military personal around!";};

_rip = true; //Makes it so the teller can no-longer be robbed
_kassa = 1100000 + round(random 950000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";

//Notify All sides when a robbery had commenced
["BANK ROBBERY","Authorities Have confirmed that armed persons have entered the bank of tanoa. Military Officials urge people to stay away as these people are considered hostile. Any armed persons in the areas will be met with lethal force! Thankyou for your attention!",[204,0,0,1],""] remoteExecCall ["life_fnc_showNotification",civilian];

["BANK ROBBERY","CCTV Has spotted armed persons entering the bank of tanoa and have began robbing the bank. All units need to respond urgently. Lethal force may be used to subdue anyone with weapons in the area!",[204,0,0,1],""] remoteExecCall ["life_fnc_showNotification",west];

//Play a sound when the bank gets robbed

[_shop, "robbery"] remoteExec ["life_fnc_say3D",0];

//Setup progress bar

disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Robbery in Progress, stay close (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.0001;

if(_rip) then
{
while{true} do
{
sleep 1;
_cP = _cP + 0.0017;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Robbery in Progress, stay close (10m) (%1%2)...",round(_cP * 100),"%"];
_Pos = position player; // by ehno: get player pos
				                _marker = createMarker ["MarkerBank", _Pos]; //by ehno: Place a Maker on the map
				                "MarkerBank" setMarkerColor "ColorRed";
				                "MarkerBank" setMarkerText "!ATTENTION! robbery !ATTENTION!";
				                "MarkerBank" setMarkerType "mil_warning";
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 10.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 10.5) exitWith { deleteMarker "MarkerBank"; _shop switchMove ""; hint "You have gone too far away from the teller and he has managed to flee"; 5 cutText ["","PLAIN"]; _rip = false; };
5 cutText ["","PLAIN"];

titleText[format["You have stolen $%1, You were seen on CCTV and the military know who you are get away whilst you still can!",[_kassa] call life_fnc_numberText],"PLAIN"];
deleteMarker "MarkerBank"; // by ehno delete maker
life_cash = life_cash + _kassa;

_rip = false;
life_use_atm = false;
sleep (30 + random(180));
life_use_atm = true;
if!(alive _robber) exitWith {};
[getPlayerUID _robber,name _robber,"211"] remoteExec ["life_fnc_wantedAdd",2];
};
sleep 1800;
_action = _shop addAction["Rob the teller",life_fnc_robBank];
_shop switchMove "";