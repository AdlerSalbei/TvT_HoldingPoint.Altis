if (!isServer) exitWith {};
if (str VEHICLEARRAY == "[]") exitWith {};

{
	_x params ["_Type","_removeHE"];
	//find spawn position
	_spawnPosition = [];
	for "_i" from 1 to 20 do {
		_spawnPosition = BLUFORSPAWN findEmptyPosition [_minDistance, 15 + 5*_i, _Type];
		if (str _spawnPosition != "[]") exitWith {};
	};

	//spawn vehicle
	_vehicle = _Type createVehicle _spawnPosition;
	if (_spawnEmpty == 1) then {
		clearBackpackCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearWeaponCargoGlobal _vehicle;
	};
	
	//remove HE ammo
	if (_removeHE != 0) then {
		_vehicle removeMagazine _removeHE;
	};
	
}forEach VEHICLEARRAY;