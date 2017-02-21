if (!hasInterface) exitWith {};

if ([player] call hp_common_fnc_isCommander) then {
    [true,"CHOOSE PLAYZONE (LMOUSE)","CONFIRM (ENTER)"] call hp_ui_fnc_twoLineHint;
} else {
    if (side player == EAST) then {
        [true,"COMMANDER IS CHOOSING POSITION","PLEASE WAIT"] call hp_ui_fnc_twoLineHint;
    } else {
        [true,"OPFOR IS CHOOSING POSITION","PLEASE WAIT"] call hp_ui_fnc_twoLineHint;
    };
};
