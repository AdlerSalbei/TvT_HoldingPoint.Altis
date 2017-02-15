class Vehicles {
    permissionLevel = 3;

    displayName = "Vehicles";
    kindOf = "Vehicles";
    spawnEmpty = 1;

    class LIB_Willys_MB {
        displayName = "Willys";
        price = 2000;
        stock = 10;
		code = "if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 0]; publicVariable 'VEHICLEARRAY';};";
    };

    class LIB_zis5v {
        displayName = "zis5v";
        price = 4000;
        stock = 20;
		code = "if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 0]; publicVariable 'VEHICLEARRAY';};";
    };

    class LIB_SOV_M3_Halftrack {
        displayName = "M3 Half-track";
        price = 5000;
        stock = 5;
		code = "if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 0]; publicVariable 'VEHICLEARRAY';};";
    };

    class LIB_M4A2_SOV {
        displayName = "M4A2";
        price = 7000;
        stock = 2;
		code = "(_this select 2) removeMagazine 'LIB_60x_M42A1_M1_HE'; if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 'LIB_60x_M42A1_M1_HE']; publicVariable 'VEHICLEARRAY';};";
    };

	class LIB_T34_76 {
        displayName = "T34 76mm";
        price = 8000;
        stock = 2;
		code = "(_this select 2) removeMagazine 'LIB_50x_OF350_HE'; if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 'LIB_50x_OF350_HE']; publicVariable 'VEHICLEARRAY';};";
    };

    class LIB_T34_85 {
        displayName = "T34 85mm";
        price = 9000;
        stock = 2;
		code = "(_this select 2) removeMagazine 'LIB_36x_O365_HE'; if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 'LIB_36x_O365_HE']; publicVariable 'VEHICLEARRAY';};";
    };
	
    class LIB_JS2_43 {
        displayName = "JS2";
        price = 10000;
        stock = 1;
	code = "(_this select 2) removeMagazine 'LIB_16x_OF471_HE'; if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 'LIB_16x_OF471_HE']; publicVariable 'VEHICLEARRAY';};";
    };
	
	/*
	class LIB_SU85 {
        displayName = "SU85";
        price = 3000;
        stock = 3;
		code = "(_this select 2) removeMagazine 'LIB_25x_O365_HE'; if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 'LIB_25x_O365_HE']; publicVariable 'VEHICLEARRAY';};";
    };
	*/
    class LIB_P39 {
	permissionLevel = 6;
	kindOf = "Other";
        displayName = "P39";
	description = "Jagdbomber mit einer 37mm Maschinenkanonen und vier 12.5mm Maschinenkanonen.";
        price = 12000;
        stock = 1;
	code = "[(_this select 1), (getPos player)] call uo_fnc_planeSpawn; diag_log format ['BuyMenu: Bought %1', __this select 1];";
    };
	

	class LIB_Pe2 {
	permissionLevel = 6;
	kindOf = "Other";
        displayName = "Pe2";
	description = "Bomber mit einer 12,7mm Kanone einem Heckschützen mit einem 7.92mm Maschiengewehr.";
        price = 14000;
        stock = 1;
		code = " [(_this select 1), (getPos player)] call uo_fnc_planeSpawn;  diag_log format ['BuyMenu: Bought %1', __this select 1];";
    };
	
/*	
	class LIB_Li2 {
		permissionLevel = 6;
		kindOf = "Other";
        displayName = "Li2";
		description = "Bomber mit einer 250KG Bombe bewaffnet. Desweiter Verfügt er über einen Heckschützen mit einem 7.92mm Maschiengewehr.";
        price = 20000;
        stock = 1;
		code = " [(_this select 1), (getPos player)] call uo_fnc_planeSpawn;";
    };
*/
};
