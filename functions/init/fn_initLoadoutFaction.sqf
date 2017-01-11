_terrainClass = if (uo_missionParam_ISWOODLAND) then {"loadoutWood"} else {"loadoutDes"};
_blufor = getText (missionConfigFile >> "cfgFactions" >> uo_missionParam_BLUFORFACTION >> _terrainClass);
_opfor = getText (missionConfigFile >> "cfgFactions" >> uo_missionParam_OPFORFACTION >> _terrainClass);

["BLU_F", _loadoutFactionBlu] call GRAD_Loadout_fnc_FactionSetLoadout;
["OPF_F", _loadoutFactionOP] call GRAD_Loadout_fnc_FactionSetLoadout;

diag_log format ["fn_initLoadoutFaction - Blufor faction is %1.", _blufor];
diag_log format ["fn_initLoadoutFaction - Opfor faction is %1.", _opfor];
