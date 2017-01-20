params ["_initialPos"];

_function = {
    params ["_args", "_handle"];
    _args params ["_initialPos"];

    drawIcon3D ["a3\ui_f\data\gui\Rsc\RscDisplayIntel\azimuth_ca.paa", [1,1,1,1], _initialPos vectorAdd [0,0,1], 1, 1, 45, format ["%1 (%2m)", Bluforspawn, round (player distance _initialPos)], 1, 0.04, "PuristaMedium"];
};
_handle = [_function, 0, [_initialPos]] call CBA_fnc_addPerFrameHandler;

[{
    params ["_handle"];
    [_handle] call CBA_fnc_removePerFrameHandler;
}, _handle, 120] call CBA_fnc_waitAndExecute;
