#define PREFIX hp
#include "\x\cba\addons\main\script_macros_mission.hpp"

if (!isServer) exitWith {};

_cfg = missionConfigFile >> "CfgFactions" >> hp_missionParam_BLUFORFACTION;
if (!isClass _cfg) exitWith {ERROR_1("%1 IS NOT A VALID FACTION.", hp_missionParam_BLUFORFACTION)};
_cvs = getArray (_cfg >> "commandVehicles");

_camo = if (hp_missionParam_ISWOODLAND) then {0} else {1};
COMMANDVEHICLECLASS = _cvs select _camo;
publicVariable "COMMANDVEHICLECLASS";
