enableSaving [false, false];
enableEngineArtillery false;

MISSION_COMPLETED = false;
publicVariable "MISSION_COMPLETED";
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

if ((_this select 1) && (!isNil "OPFORSPAWN")) then {
	if (!isNil "BLUFORSPAWN") exitWith {player setDamage 1;};
	if ((side player)== EAST) then {
		[(side player)] call hp_fnc_tpSide;
	}; 
};

