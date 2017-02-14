if (!isServer) exitWith {};

{
	if (side _x == EAST) then {
		_startPos = [OPFORSPAWN, [0,15]] call hp_fnc_findRandomPos;
		_x setVariable ["startPosition", _startPos, true];
	};
} forEach playableUnits;

missionNamespace setVariable ["hp_init_opforSpawnSet", true, true];

diag_log format ["fn_findOpfStartPos - Positions found for %1 players.", {side _x == EAST} count playableUnits];
