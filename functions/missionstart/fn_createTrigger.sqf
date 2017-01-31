if (!isServer) exitWith {};

//city trigger =================================================================
_condition = "
    (west countSide thisList)/((east countSide thisList) max 1) >= uo_missionParam_CONTROLRATIO;
";

_onActivation = "
    BLUFORINCONTROL = true;
    publicVariable 'BLUFORINCONTROL';
    [[], ['BLUFOR','has taken control!']] remoteExec ['uo_fnc_sideHint',0,false];
";

_onDeactivation = "
    BLUFORINCONTROL = false;
    publicVariable 'BLUFORINCONTROL';
    [[], ['BLUFOR','is no longer in control.']] remoteExec ['uo_fnc_sideHint',0,false];
";

_trigger = createTrigger ["EmptyDetector", OPFORSPAWN, false];
_trigger setTriggerArea [15,15,0,false];
_trigger setTriggerActivation ["ANY", "PRESENT", true];
_trigger setTriggerStatements [_condition,_onActivation,_onDeactivation];
_trigger setTriggerTimeout [5,10,20,true];

missionNamespace setVariable ["uo_init_triggerCreated", true, true];

diag_log format ["fn_createTrigger - City trigger created: %1.", _trigger];
