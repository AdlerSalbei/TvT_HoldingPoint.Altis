if ("Preset" call BIS_fnc_getParamValue == 1) then {};

["Initialize", [true]] call BIS_fnc_dynamicGroups;

[] execVM "tfarsettings.sqf";
