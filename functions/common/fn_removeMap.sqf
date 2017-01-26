{	
	if ("Preset" call BIS_fnc_getParamValue == 1) then {
		diag_log format ["Taking Map from %1", _x];
	};
	
	if !([_x] call uo_fnc_isCommander) then {
		openMap [false, false];
		_x unassignItem "ItemMap";
		_x removeItem "ItemMap";
	};
}forEach allPlayers - entities "HeadlessClient_F";
