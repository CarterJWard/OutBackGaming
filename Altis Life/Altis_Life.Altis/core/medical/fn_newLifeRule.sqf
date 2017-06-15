/*
New Life Rule Timer
Released to AltisLifeRPG.com
-----Repentz-----
*/
private["_uiDisp","_time","_timer","_msg","_from", "_name"];
if(playerSide isEqualTo west) exitWith {};
if(playerSide isEqualTo independent) exitWith {};
disableSerialization;
sleep 25;
7 cutRsc ["life_nlrtimer","PLAIN"];
_uiDisp = uiNamespace getVariable "life_nlrtimer";
_timer = _uiDisp displayCtrl 38301;
_time = time + (8 * 60);
life_nlrtimer_running = true;
nlr_check = true;
_msg = format["ATTENTION STAFF: %1 is breaking his NLR. Please investigate.",player getVariable["realname",name player]];
_from = "The Server NLR Department";
_name = player getVariable["realname",name player];


while {true} do {
    if(isNull _uiDisp) then {
        7 cutRsc ["life_nlrtimer","PLAIN"]; 
        _uiDisp = uiNamespace getVariable "life_nlrtimer";
        _timer = _uiDisp displayCtrl 38301;
    };
	
	if(life_nlrtimer_stop) exitWith 
	{
		life_nlrtimer_stop = false; 
	};
		
    _timer ctrlSetText format["NLR: %1",[(_time - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
    sleep 0.08;
	
	if ((playerSide == civilian) && (nlr_check)) then { 
		if (player distance (getMarkerPos "NLRMarker") < 250) then 
		{
			//[ObjNull,_msg, _name] remoteExec ["TON_fnc_handleMessages", 6];
			hint parseText format["<t color='#FA4F4F'><t size='1.2'>You entered your NLR marker, Staff members have been notified."];
			[] call TON_fnc_nlrBreak;
			nlr_check = false;
		};
	};
	
	/*
	if (playerSide == civilian) then {
		if (player distance (getMarkerPos "NLRMarker") < 300) then {
			titleText ["LEAVE YOUR NLR ZONE: 10","PLAIN"];
			sleep 1;
			titleText ["LEAVE YOUR NLR ZONE: 9","PLAIN"];
			sleep 1;
			titleText ["LEAVE YOUR NLR ZONE: 8","PLAIN"];
			sleep 1;
			titleText ["LEAVE YOUR NLR ZONE: 7","PLAIN"];
			sleep 1;
			titleText ["LEAVE YOUR NLR ZONE: 6","PLAIN"];
			sleep 1;
			titleText ["LEAVE YOUR NLR ZONE: 5","PLAIN"];
			sleep 1;
			titleText ["LEAVE YOUR NLR ZONE: 4","PLAIN"];
			sleep 1;
			titleText ["LEAVE YOUR NLR ZONE: 3","PLAIN"];
			sleep 1;
			titleText ["LEAVE YOUR NLR ZONE: 2","PLAIN"];
			sleep 1;
			titleText ["LEAVE YOUR NLR ZONE: 1","PLAIN"];
			sleep 1;
	  		titleText ["","PLAIN"];
			if (player distance (getMarkerPos "NLRMarker") < 300) then {
				player setPos (getMarkerPos "nlr_asy"); 
				hint parseText format["<t color='#FA4F4F'><t size='1.2'>You entered your NLR marker, you've been banished to the NLR Asylum.</t></t><br/><br/><t size='1.2'>Use the garages to pull out vehicles.<br/><br/>This script may not stay in the server, it will be reviewed in 3 days. Please post on the forums in the latest development update to voice your opinion about this feature, if you think it should stay in or not. Thanks - !TS JORDAN"];
			};
		};
	};
	*/
	  
    if(round(_time - time) < 1) exitWith  
	{
		deleteMarkerLocal "NLRMarker";
		deleteMarkerLocal "NLRMarker2";
	};
};

life_nlrtimer_running = false;
7 cutText["","PLAIN"];