if (!isServer) exitWith {};

params ["_cv"];

_h = [{
    (_this select 0) params ["_cv","_inner", "_outer", "_enemyRadius"];
    private ["_cvactive"];

    //cv is gone
    if (isNull _cv || !alive _cv) exitWith {
        _cv setVariable ["hp_respawnObject_isActive", false, true];
        missionNamespace setVariable ["hp_cv_allCVs", (missionNamespace getVariable ["hp_cv_allCVs", []]) - [_cv], true];
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };

    //get distance
    _dist = OPFORSPAWN distance2D _cv;


    _cvactive = switch (true) do {
        case (_dist < _inner): {false};
        case (_dist > _outer): {false};
        case (speed _cv > 2): {false};
        case ({alive _x && side _x == east} count _nearestObjects > 0): {false};
        default {true}
    };

diag_log format ["fn_checkCommandVehicle - Loop created. Handle: %1.", _h];
