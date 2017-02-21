#define PREFIX hp
#include "\x\cba\addons\main\script_macros_mission.hpp"

if (!isServer) exitWith {};

[{
    if (BLUFORINCONTROL) then {
        CAPTURETIMEREMAINING = CAPTURETIMEREMAINING - 1;
        publicVariable "CAPTURETIMEREMAINING";

        if (CAPTURETIMEREMAINING <= 0) then {
            if (missionNamespace getVariable ["hp_endInProgressServer", false]) exitWith {INFO("A different ending is already in progress. Captured")};
            hp_endInProgressServer = true;

            missionNamespace setVariable ["hp_gameEnded", ["WEST", "LOCATION CAPTURED!"], true];
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    };
} , 1, []] call CBA_fnc_addPerFrameHandler;
