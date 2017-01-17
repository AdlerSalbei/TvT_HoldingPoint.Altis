{	
	diag_log format ["ReMap: Player: %1", _x];
	if !(_x != "opforcommand" && _x != "bluforcommand") then {
		openMap [false, false];
		_x unassignItem "ItemMap";
		_x removeItem "ItemMap";
	};
}forEach allPlayers - entities "HeadlessClient_F";

/*
	Soldier_SL_F
	Soldier_TL_F
*/