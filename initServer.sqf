if ("Preset" call BIS_fnc_getParamValue == 1) then {
	OPFORSPAWN = [14930.4,16482.7,0];
    publicVariable "OPFORSPAWN";
    uo_init_cityChosen = true;
    publicVariable "uo_init_cityChosen";
};

["Initialize", [true]] call BIS_fnc_dynamicGroups;

[] execVM "tfarsettings.sqf";
