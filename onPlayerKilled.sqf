#include "\z\ace\addons\main\script_component.hpp"

if (!MISSION_COMPLETED) exitWith {};
	[true] call ace_spectator_fnc_setSpectator;
	[player, true] call TFAR_fnc_forceSpectator;
	
	switch (playerSide) do {
	case (west) do {
		[[west], [east, civilian, independent]] call ace_spectator_fnc_updateSpectatableSides;
		[[1], [0,2]] call ace_spectator_fnc_updateCameraModes;
	};
	case (east) do {
		[[east], [west, civilian, independent]] call ace_spectator_fnc_updateSpectatableSides;
		[[1], [0,2]] call ace_spectator_fnc_updateCameraModes;
	};
	default {
		[[east,west,civilian, independent], []] call ace_spectator_fnc_updateSpectatableSides;
		[[1], [0,2]] call ace_spectator_fnc_updateCameraModes;
	};
};

	_killer = player getVariable ["ace_medical_lastDamageSource", objNull];

	if (!isNull _killer) then {
		_distance = (_this select 0) distance2D _killer;
		_string = format ['Killed by %1 from %2m',_killer, _distance];
		[_string] call EFUNC(common,displayTextStructured);
	};

