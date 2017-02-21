if (!hasInterface) exitWith {};

[{_originalSide = player getVariable "originalSide"; !isNil "_originalSide"}, {
    private ["_configpos"];
    if (player getVariable "originalSide" == "WEST") then {
        _configpos = ["spawnPosBlu"] call hp_fnc_getIslandCfgValue;
    } else {
        _configpos = ["spawnPosOpf"] call hp_fnc_getIslandCfgValue;
    };

    _pos = _configpos findEmptyPosition [0,10];
    if (str _pos == "[]") then {_pos = _configpos};
    player allowDamage false;
    player setPos _pos;
    [{player allowDamage true}, [], 5] call CBA_fnc_waitAndExecute;
    diag_log format ["fn_moveToMapStart - Moved %1 to startposition %2. Configposition was %3", player, _pos, _configpos];
}, []] call CBA_fnc_waitUntilAndExecute;
