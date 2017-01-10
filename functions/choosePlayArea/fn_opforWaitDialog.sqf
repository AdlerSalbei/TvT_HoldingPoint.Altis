if (!hasInterface) exitWith {};

_isCommander = false;
if (!isNil "opforcommander") then {_isCommander = (player == opforcommander)};

if (_isCommander) then {
    [true,"CHOOSE PLAYZONE (LMOUSE)","CONFIRM (ENTER)"] call uo_ui_fnc_twoLineHint;
} else {
    if (side player == EAST) then {
        [true,"COMMANDER IS CHOOSING POINT","PLEASE WAIT"] call uo_ui_fnc_twoLineHint;
    } else {
        [true,"OPFOR IS CHOOSING POINT","PLEASE WAIT"] call uo_ui_fnc_twoLineHint;
    };
};
