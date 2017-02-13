#define PREFIX uo
#include "\x\cba\addons\main\script_macros_mission.hpp"

private ["_condition","_onActivation","_onDeactivation"];

if (hasInterface) then {
    _condition = "
        uo_unitsInCityArea = thisList;
        ((west countSide thisList) max 0.01)/((east countSide thisList) max 0.1) >= uo_missionParam_CONTROLRATIO;
    ";

    _onActivation = "
        BLUFORINCONTROL = true;
        publicVariable 'BLUFORINCONTROL';
        [[],'Report','BLUFOR has taken control!'] remoteExec ['uo_common_fnc_sideNotification',0,false];
    ";

    _onDeactivation = "
        BLUFORINCONTROL = false;
        publicVariable 'BLUFORINCONTROL';
        [[],'Report','BLUFOR is no longer in control.'] remoteExec ['uo_common_fnc_sideNotification',0,false];
    ";
} else {
    _condition = "uo_unitsInCityArea = thisList;";
    _onActivation = "";
    _onDeactivation = "";
};

diag_log format ["Condition: %1", _condition];
diag_log format ["Activation: %1", _onActivation];
diag_log format ["Deactivation: %1", _onDeactivation];

_trigger = createTrigger ["EmptyDetector", OPFORSPAWN, false];
_trigger setTriggerArea [15,15,0,false];
// _trigger setTriggerArea [hp_missionParam_CAPTUREZONESIZE,hp_missionParam_CAPTUREZONESIZE,0,false];
_trigger setTriggerActivation ["ANY", "PRESENT", true];
_trigger setTriggerStatements [_condition,_onActivation,_onDeactivation];
_trigger setTriggerTimeout [5,10,20,true];

missionNamespace setVariable ["uo_init_triggerCreated", true, true];

INFO_1("Hoding Point trigger created: %1.", _trigger);
