params ["_plane"];

_function = {
    params ["_args", "_handle"];
    _args params ["_plane"];
	_posPlane = getPos _plane;
    drawIcon3D ["a3\ui_f\data\gui\Rsc\RscDisplayIntel\azimuth_ca.paa", [1,1,1,1], _posPlane vectorAdd [0,0,1], 1, 1, 45, format ["Spawned Plane: (%1m)", round (player distance _posPlane)], 1, 0.04, "PuristaMedium"];
};
_handle = [_function, 0, [_plane]] call CBA_fnc_addPerFrameHandler;

[{
    params ["_handle"];
    [_handle] call CBA_fnc_removePerFrameHandler;
}, _handle, 30] call CBA_fnc_waitAndExecute;