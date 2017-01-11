enableSaving [false, false];
enableEngineArtillery false;

MISSION_COMPLETED = false;
publicVariable "MISSION_COMPLETED";
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;
