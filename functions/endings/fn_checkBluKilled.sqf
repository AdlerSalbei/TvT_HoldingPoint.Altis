
#define PREFIX uo
#define COMPONENT endings
#include "\x\cba\addons\main\script_macros_mission.hpp"

if (!isServer) exitWith {};

uo_fnc_endByBluKilled_preEliminated = {
    [{
        if (({side _x == west} count playableUnits) == 0) then {
                [] call uo_fnc_endByBluKilled_eliminated;
                [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    } , 5, []] call CBA_fnc_addPerFrameHandler;
};

uo_fnc_endByBluKilled_eliminated = {
    [{
        if (missionNamespace getVariable ["uo_endInProgressServer", false]) exitWith {INFO("A different ending is already in progress.")};
        uo_endInProgressServer = true;

        missionNamespace setVariable ["uo_gameEnded", ["EAST", "BLUFOR ELIMINATED!"], true];
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    } , 1, []] call CBA_fnc_addPerFrameHandler;
};

[] call uo_fnc_endByBluKilled_preEliminated;
