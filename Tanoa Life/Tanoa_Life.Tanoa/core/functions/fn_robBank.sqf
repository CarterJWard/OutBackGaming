/*
file: fn_robBank.sqf
Author: MrKraken
Description:
Executes the rob shob action!
*/
private["_robber","_shop","_reward","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_action = [_this,2] call BIS_fnc_param;//Action name

if(side _robber != civilian) exitWith { hint "YOU CAN'T ROB THE BANK YOU SPOON!!" };
if(_robber distance _shop > 5) exitWith { hint "You need to get closer to the teller to scare him" };

if (_rip) exitWith { hint "Robbery already in progress!" };
if (vehicle player != _robber) exitWith { hint "Get out of your vehicle!" };

if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "HaHa, you do not threaten me! Get out of here you hobo!" };

_rip = true;
_reward = 980000 + round(random 690000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(50);
if (_chance >=1) then {1,parseText format["<t size='1.5'><t align='center'><t color='#ce0a2b'>Alert !</t></t></t><br><t align='center'> Authorities have confirmed the armed perons have taken over the tanoa bank and are considered armed and dangers please keep clear of the area</t>"]] remoteExec ["life_fnc_broadcast",civilian];};
//Play sound : TBA

_cops = (west countSide playableUnits);
if(_cops < 0) exitWith{[_vault,-1] remoteExec ["disableSerialization;",2]; hint "The bank is currently closed as their is not enough militry present on the island";};
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
sleep 3;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Robbery in Progress, stay close (10m) (%1%2)...",round(_cP * 100),"%"];
_Pos = position player; // by ehno: get player pos
				                _marker = createMarker ["MarkerBank", _Pos]; //by ehno: Place a Maker on the map
				                "MarkerBank" setMarkerColor "ColorRed";
				                "MarkerBank" setMarkerText "!ATTENTION! Bank Robbery In Progress !ATTENTION!";
				                "MarkerBank" setMarkerType "mil_warning";
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 10.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 10.5) exitWith { deleteMarker "Marker200"; _shop switchMove ""; hint "You left too far from the teller and he got away. The vault is now locked"; 5 cutText ["","PLAIN"]; _rip = false; deleteMarker "MarkerBank"; };
5 cutText ["","PLAIN"];

titleText[format["You have stolen $%1, but were seen by the store camera. the military know who you are and are coming for you",[_reward] call life_fnc_numberText],"PLAIN"];
deleteMarker "MarkerBank"; // by ehno delete maker
life_cash = life_cash + _reward;

_rip = false;
life_use_atm = false;
sleep (30 + random(180));
life_use_atm = true;
if!(alive _robber) exitWith {};
[getPlayerUID _robber,name _robber,"26"] remoteExec ["life_fnc_wantedAdd",2];
};
sleep 1800;
_action = _shop addAction["Rob the Teller",life_fnc_robstore];
_shop switchMove "";