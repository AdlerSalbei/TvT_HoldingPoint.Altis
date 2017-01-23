{	
	if ([player] call uo_fnc_isCommander) then {
		openMap [false, false];
		_x unassignItem "ItemMap";
		_x removeItem "ItemMap";
	};
}forEach allPlayers - entities "HeadlessClient_F";
