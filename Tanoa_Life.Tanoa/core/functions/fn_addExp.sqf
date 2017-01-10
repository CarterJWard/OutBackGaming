#include "..\..\script_macros.hpp"
/*
File: fn_addExp.sqf
Author: Jacob "PapaBear" Tyler
Edited By: [midgetgrimm]
Description:Add exp to given prof
*/
private["_flag","_profData"];
_flag = PROF_SIDE(playerSide);
_type = [_this,0,"",[""]] call BIS_fnc_param;
_amount = [_this,1,0,[0]] call BIS_fnc_param; 
_profData = PROF_VALUE(_type,_flag);

_level = (SEL(_profData,0));
_exp = (SEL(_profData,1));
_nextLevel = 0;
_nextLevel = _level * ( _level - 1) * 500 ;    
if(_nextLevel < 1) then {_nextLevel = 500;};
_exp = _exp + _amount;
if( _exp >= _nextLevel ) then 
{    
	if( _level >= 20 ) then 
	{         
		if( _exp >= _nextLevel ) then {               
			_exp = _nextLevel;               
			SVAR_MNS [PROF_VARNAME(_type,_flag),[SEL(_profData,0),(_exp)]];			
				} else 
		{               
			SVAR_MNS [PROF_VARNAME(_type,_flag),[SEL(_profData,0),(_exp)]];			
		};     
	} else 
		{       
			_exp = _nextLevel - _exp;        
			if(_exp < 0) then{_exp = 0;};  
			SVAR_MNS [PROF_VARNAME(_type,_flag),[SEL(_profData,0) + 1,(_exp)]];			       
			if( _level == 20 ) then {                
				_level = SEL(_profData,0) + 1;                
				_text = M_CONFIG(getText,"Profs",_type,"name");	
				titleText[format[localize "STR_Prof_lvlUp",(localize _text),_level],"PLAIN"];				
				} else { 
					SVAR_MNS [PROF_VARNAME(_type,_flag),[SEL(_profData,0) + 1,(_exp)]];     
					_level = SEL(_profData,0) + 1;              
					_text = M_CONFIG(getText,"Profs",_type,"name");
					titleText[format[localize "STR_Prof_lvlUp2",(localize _text),_level],"PLAIN"];    
					};     					
		}; 
} else 
	{    
		SVAR_MNS [PROF_VARNAME(_type,_flag),[SEL(_profData,0),(_exp)]];
	}; 
