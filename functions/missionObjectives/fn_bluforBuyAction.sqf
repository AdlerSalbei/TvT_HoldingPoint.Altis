params ["_cv"];

if (!hasInterface) exitWith {};
if (isNil "_cv") exitWith {};
if (isNull _cv) exitWith {};


[_cv,"blu_" + uo_missionParam_BLUFORFACTION + "_army",_cv,_cv,"COMMANDVEHICLE","Buy Equipment", {side player == WEST}] call grad_lbm_fnc_addInteraction;



//access opfor menu from commandvehicle (for debug purposes)
if (uo_missionParam_PRESET == "DEBUG") then {
  [_cv,"opf_" + uo_missionParam_OPFORFACTION + "_army",_cv,_cv,"COMMANDVEHICLE","Buy Equipment", {side player == WEST}] call grad_lbm_fnc_addInteraction;
};
