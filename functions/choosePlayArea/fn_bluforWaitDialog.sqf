if (!hasInterface) exitWith {};

[true,"OPFOR IS CHOOSING POSITION","PLEASE WAIT"] call hp_ui_fnc_twoLineHint;


[{!isNil "OPFORSPAWN"}, {
	[player,"blu_" + hp_missionParam_BLUFORFACTION + "_army",BLUFORBUYBOX,player,"SELF-INTERACT","Buy Equipment", {side player == WEST && !isNil "BLUFORSPAWN"}] call grad_lbm_fnc_addInteraction;
    [{
        if (SETUPTIMEREMAINING <= 1) then {
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
        [true, format ["TIME REMAINING: %1 PLEASE WAIT", ([SETUPTIMEREMAINING,"MM:SS"] call BIS_fnc_secondsToString)], "BUYMENU ACCESSIBLE"] call hp_ui_fnc_twoLineHint;
    } , 1, []] call CBA_fnc_addPerFrameHandler;
}, []] call CBA_fnc_waitUntilAndExecute;


_isCommander = false;
if (!isNil "bluforcommander") then {_isCommander = (player == bluforcommander)};
[{SETUPTIMEREMAINING <= 0}, {
    if (_this) then {
        [true,"CHOOSE SPAWN (LMOUSE)","CONFIRM (ENTER)"] call hp_ui_fnc_twoLineHint;
    } else {
        [true,"COMMANDER IS CHOOSING SPAWN","PLEASE WAIT"] call hp_ui_fnc_twoLineHint;
    };
}, _isCommander] call CBA_fnc_waitUntilAndExecute;
