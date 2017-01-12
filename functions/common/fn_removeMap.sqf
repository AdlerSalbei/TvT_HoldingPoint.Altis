{	
	diag_log format ["Player: %1", _x];
	if !(_x != "opforcommand" && _x != "bluforcommand") then {
		_x unassignItem "ItemMap";
		_x removeItem "ItemMap";
	};
}forEach allPlayers - entities "HeadlessClient_F";

/*
	Soldier_SL_F
	Soldier_TL_F
*/