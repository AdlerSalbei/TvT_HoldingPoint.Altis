#include "\z\ace\addons\main\script_component.hpp"

if (!MISSION_COMPLETED) then {
	[true] call ace_spectator_fnc_setSpectator;

	_killer = player getVariable ["ace_medical_lastDamageSource", objNull];

	if (!isNull _killer) then {
		_initialPos = getPos _killer;
		_diedPlayerPos = getPos player;
		_initX = _diedPlayerPos select 0;
		_initY = _diedPlayerPos select 1;
		_initZ = _diedPlayerPos select 2;

		_initialPosPosX = _initialPos select 0;
		_initialPosPosY = _initialPos select 1;

		_dX = _initialPosPosX - _initX;
		_dY = _initialPosPosY - _initY;

		//get angle between markers and add 180
		_ang = _dX atan2 _dY;
		_ang = _ang + 180;

		//fix angle if <0 or >360
		_ang = _ang mod 360;

		//find new coords
		_newX = _initX + sin(_ang);
		_newY = _initY + cos(_ang);
		_newZ = _initZ +3;
		_pos = [ _newX, _newY, _newZ];

		[0, _killer, -2, _pos,,-30] call ace_spectator_fnc_setCameraAttributes;
		_string = format ['Killed by %1',_killer];
		[_string] call EFUNC(common,displayTextStructured);
	};
};
[player, true] call TFAR_fnc_forceSpectator;
