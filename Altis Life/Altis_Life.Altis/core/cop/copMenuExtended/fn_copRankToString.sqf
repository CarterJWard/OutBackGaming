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
	case 4: {"Inc. Snr Constable"};
	case 5: {"Lead Snr Constable"};		
	case 6: {"Sergeant"};
	case 7: {"Inc. Sergeant"};
	case 8: {"Snr Sergeant"};
	case 9: {"Inspector"};
	case 10: {"Cheif Inspector"};
	case 11: {"Superintendent"};
	case 12: {"Cheif Superintendent"};
	case 13: {"Commissioner"};
	default {""};
};

_return;
