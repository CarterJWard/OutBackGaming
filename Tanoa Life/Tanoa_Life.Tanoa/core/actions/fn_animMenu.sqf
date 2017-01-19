/*
* @File:   fn_animMenu.xxxxx
* @Author: Ciaran "Ciaran" Langton <email@ciaranlangton.com>
*/

_menu = _this select 0;

_anims = [
	["Pushups","AmovPercMstpSnonWnonDnon_exercisePushup"],
	["Ninja Dance","AmovPercMstpSnonWnonDnon_exerciseKata"],
	["Knee Bends (Fast)","AmovPercMstpSnonWnonDnon_exercisekneeBendB"],
	["Knee Bends (Normal)","AmovPercMstpSnonWnonDnon_exercisekneeBendA"],
	["Scared","AmovPercMstpSnonWnonDnon_Scared"],
	["Pissing","Acts_AidlPercMstpSlowWrflDnon_pissing"]  
];
disableSerialization;
if(_menu) then {
	if(player getVariable ["restrained",false]) exitWith {closeDialog 0;};
	if(player getVariable ["escorting",false]) exitWith {closeDialog 0;};
	if(animationState player == "incapacitated") exitWith {closeDialog 0;};
	if(life_istazed) exitWith {closeDialog 0;};
	if(life_action_inUse) exitWith {closeDialog 0;};	
	if(!alive player) exitWith {closeDialog 0;};
	_animListDiag = findDisplay 13750;
	_animList = _animListDiag displayCtrl 13751;
	_id = lbCurSel (_animList);
	if(_id == -1) exitWith {};
	_arr = _anims select _id;
	player playMoveNow (_arr select 1);
	closeDialog 0;
} else {
	if(dialog) exitWith {}; //Fix dialog
	createDialog "animMenu";
	if(player getVariable ["restrained",false]) exitWith {closeDialog 0;};
	if(player getVariable ["escorting",false]) exitWith {closeDialog 0;};
	if(animationState player == "incapacitated") exitWith {closeDialog 0;};
	if(life_istazed) exitWith {closeDialog 0;};	
	if(life_action_inUse) exitWith {closeDialog 0;};
	if(!alive player) exitWith {closeDialog 0;};	
	_animListDiag = findDisplay 13750;
	_animList = _animListDiag displayCtrl 13751;
	{
		_animList lbAdd format["%1",_x select 0];
	} forEach _anims;
};