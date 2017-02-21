#define PREFIX hp
#include "\x\cba\addons\main\script_macros_mission.hpp"

if (!isServer) exitWith {};

hp_fnc_endByBluKilled_preEliminated = {
    [{
        if (({side _x == west} count playableUnits) == 0) then {
                [] call hp_fnc_endByBluKilled_eliminated;
                [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    } , 5, []] call CBA_fnc_addPerFrameHandler;
};

hp_fnc_endByBluKilled_eliminated = {
    [{
        if (missionNamespace getVariable ["hp_endInProgressServer", false]) exitWith {INFO("A different ending is already in progress. Bluforkilled")};
        hp_endInProgressServer = true;

        missionNamespace setVariable ["hp_gameEnded", ["EAST", "BLUFOR ELIMINATED!"], true];
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    } , 1, []] call CBA_fnc_addPerFrameHandler;
};

[] call hp_fnc_endByBluKilled_preEliminated;
