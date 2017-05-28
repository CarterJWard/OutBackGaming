#include "..\..\script_macros.hpp"
/*    
	File: fn_grabSkills.sqf    
	Author: [midgetgrimm]    
	diag_log format["%1",];
	Adjusted By: Fresqo
*/
private["_display","_lvl","_exp","_profText","_expLeft","_profName","_data","_profLevel","_nextLevel","_flag"];
disableSerialization;
_display = findDisplay 7730;
_lvl = _display displayCtrl 7732;
_exp = _display displayCtrl 7733;
_expLeft = _display displayCtrl 7734;
lbClear _lvl;
lbClear _exp;
lbClear _expLeft;
_profText = lbData[7731,(lbCurSel 7731)];   //pOil
_flag = PROF_SIDE(playerSide);

 _profText = call compile format["%1", _profText];   
 
_data = PROF_VALUE(_profText,_flag);
	_profLevel = _data select 0;   
	_profExp = _data select 1; 
	
 _nextLevel = 0;  
 _nextLevel = _profLevel * ( _profLevel - 1) * 500 ;   
 if(_nextLevel < 1) then {_nextLevel = 500;}; 
 
 _expLeft lbAdd format["%1",[_nextLevel]call life_fnc_numberText];  
 _expLeft lbSetData [(lbSize _expLeft)-1,str(_nextLevel)];   
 _exp lbAdd format["%1",[_profExp]call life_fnc_numberText];  
 _exp lbSetData [(lbSize _exp)-1,str(_profExp)];  
 _lvl lbAdd format["%1",_profLevel]; 
 _lvl lbSetData [(lbSize _lvl)-1,str(_profLevel)]; 
