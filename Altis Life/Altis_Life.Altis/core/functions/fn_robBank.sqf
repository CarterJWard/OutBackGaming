/*
file: fn_robShops.sqf
Author: MrKraken
Description:
Executes the rob shob action!
*/
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos","_copsNeeded"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
//_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name
_copsNeeded = 6;

if(side _robber != civilian) exitWith { hint "What are you doing??" };
if(_robber distance _shop > 5) exitWith { hint "You need to be within 5m of the cashier to rob him!" };

if !(_kassa) then { _kassa = 1000; };
if (_rip) exitWith { hint "Robbery already in progress!" };
if (vehicle player != _robber) exitWith { hint "Get out of your vehicle!" };

if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "HaHa, you do not threaten me! Get out of here you hobo!" };
if (_kassa == 0) exitWith { hint "There is no cash in the register!" };

_rip = true;
_kassa = 1300000 + round(random 700000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";

_cops = (west countSide playableUnits);
if(_cops < _copsNeeded) exitWith{[_vault,-1] remoteExec ["disableSerialization;",2]; hint "There isnt enough Police to rob the bank";};

[3,"<t size='1.5'><t color='#e02124'><t align='center'><t font='TahomaB'><t underline='true'>BANK ROBBERY<br /><br/></t></t></t></t></t><t size ='1.2'>CCTV has confirmed armed persons are attempting to rob then bank. All units must respond, These people are considered armed and dangerous and lethal force may be used to subdue them.</t>"] remoteExec ["life_fnc_broadcast", west];

[3,"<t size='1.5'><t color='#e02124'><t align='center'><t font='TahomaB'><t underline='true'>BANK ROBBERY<br /><br/></t></t></t></t></t><t size ='1.2'>Authorities have confirmed armed rebels have begun robbing the bank of kavala. These persons are considered armed and dangers and authorities have urged civilians to keep away from the situation.</t>"] remoteExec ["life_fnc_broadcast", civilian];

[3,"<t size='1.5'><t color='#e02124'><t align='center'><t font='TahomaB'><t underline='true'>BANK ROBBERY<br /><br/></t></t></t></t></t><t size ='1.2'>Authorities have confirmed armed rebels have begun robbing the bank of kavala. These persons are considered armed and dangers and authorities have urged medics to keep away from the situation until they are given the all clear.</t>"] remoteExec ["life_fnc_broadcast", independent];

[_shop, "robbery"] remoteExec ["life_fnc_say3D",0];

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
				                _marker = createMarker ["Marker200", _Pos]; //by ehno: Place a Maker on the map
				                "Marker200" setMarkerColor "ColorRed";
				                "Marker200" setMarkerText "!ATTENTION! robbery !ATTENTION!";
				                "Marker200" setMarkerType "mil_warning";
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 10.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; deleteMarker "Marker200";};
if(_robber distance _shop > 10.5) exitWith { deleteMarker "Marker200"; _shop switchMove ""; hint "You need to stay within 10m to Rob registry! - Now the registry is locked."; 5 cutText ["","PLAIN"]; _rip = false; [3,"<t size='1.5'><t color='#e02124'><t align='center'><t font='TahomaB'><t underline='true'>BANK ROBBERY<br /><br/></t></t></t></t></t><t size ='1.2'>The bank robbery has ended. be aware that the robbers may still be in the area</t>"] remoteExec ["life_fnc_broadcast", civilian];};
5 cutText ["","PLAIN"];

titleText[format["You have stolen $%1, now get away before the cops arrive!",[_kassa] call life_fnc_numberText],"PLAIN"];
deleteMarker "Marker200"; // by ehno delete maker
life_cash = life_cash + _kassa;
[3,"<t size='1.5'><t color='#e02124'><t align='center'><t font='TahomaB'><t underline='true'>BANK ROBBERY<br /><br/></t></t></t></t></t><t size ='1.2'>The bamk robbery has ended. be aware that the robbers may still be in the area</t>"] remoteExec ["life_fnc_broadcast", civilian];

if (life_HC_isActive) then {
    [getPlayerUID player,profileName,"25"] remoteExecCall ["HC_fnc_wantedAdd",HC_Life];
} else {
    [getPlayerUID player,profileName,"25"] remoteExecCall ["life_fnc_wantedAdd",RSERV];
};

_rip = false;
life_use_atm = false;
sleep (600 + random(180));
life_use_atm = true;
if!(alive _robber) exitWith {};
[getPlayerUID _robber,name _robber,"211"] remoteExec ["life_fnc_wantedAdd",2];
};
sleep 300;
_action = _shop addAction["Rob the Bank",life_fnc_robstore];
_shop switchMove "";