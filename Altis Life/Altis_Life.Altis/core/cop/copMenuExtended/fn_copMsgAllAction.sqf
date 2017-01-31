/*
    File: fn_copMsgallAction.sqf
    Author: !TS JORDAN
*/

disableSerialization;
if (!(createDialog "life_PSA")) exitWith {hint "Public Service Ann failed!"};
ctrlSetText[26510,format["Public Service Announcment."]];