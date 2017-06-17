/*
    File: fn_copRankToString.sqf
    Author: !TS JORDAN
    Descriptiong: Converts cop level int to the coresponding string value.
*/

params [
    ["_rank",0,[0]]
];

_return = switch (_rank) do {
	case 1: {"Prob. Constable"};
	case 2: {"Constable"};
	case 3: {"Snr Constable"};	
	case 4: {"Sergeant"};
	case 5: {"Snr Sergeant"};
	case 6: {"Inspector"};
	case 7: {"Superintendent"};
	case 8: {"Commissioner"};
	default {""};
};

_return;
