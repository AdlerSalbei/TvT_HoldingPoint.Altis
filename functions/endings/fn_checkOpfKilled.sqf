#define PREFIX hp
#include "\x\cba\addons\main\script_macros_mission.hpp"

if (!isServer) exitWith {};

hp_fnc_endByOpfKilled_preEliminated = {
    [{
        if (({side _x == east} count playableUnits) == 0 && BLUFORINCONTROL) then {
            [] call hp_fnc_endByOpfKilled_eliminated;
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    } , 10, []] call CBA_fnc_addPerFrameHandler;
};


hp_fnc_endByOpfKilled_eliminated = {
    [{
        if (({side _x == east} count playableUnits) == 0 && BLUFORINCONTROL) then {
            _downSince = missionNamespace getVariable ["hp_opfDownSince", 0];
            missionNamespace setVariable ["hp_opfDownSince", _downSince + 1];
        } else {
            missionNamespace setVariable ["hp_opfDownSince", 0];
            [] call hp_fnc_endByOpfKilled_preEliminated;
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };

        if (missionNamespace getVariable ["hp_opfDownSince", 0] > 15) then {
            if (missionNamespace getVariable ["hp_endInProgressServer", false]) exitWith {INFO("A different ending is already in progress. Opforkilled")};
            hp_endInProgressServer = true;

            missionNamespace setVariable ["hp_gameEnded", ["WEST", "OPFOR ELIMINATED!"], true];
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    } , 1, []] call CBA_fnc_addPerFrameHandler;
};

[] call hp_fnc_endByOpfKilled_preEliminated;
