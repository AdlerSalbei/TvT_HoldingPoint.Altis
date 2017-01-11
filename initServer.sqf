if ("Preset" call BIS_fnc_getParamValue == 1) then {
	OPFORSPAWN = nearestLocation [[13991.4,18699.7,0], "NameCity"];
    publicVariable "OPFORSPAWN";
    uo_init_cityChosen = true;
    publicVariable "uo_init_cityChosen";
};

["Initialize", [true]] call BIS_fnc_dynamicGroups;

[] execVM "tfarsettings.sqf";
