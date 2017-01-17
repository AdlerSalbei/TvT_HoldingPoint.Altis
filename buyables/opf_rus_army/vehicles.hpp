class Vehicles {
    permissionLevel = 3;

    displayName = "Vehicles";
    kindOf = "Vehicles";
    spawnEmpty = 1;

    class LIB_Willys_MB {
        displayName = "Willys";
        price = 1000;
        stock = 10;
    };

    class LIB_zis5v {
        displayName = "zis5v";
        price = 2000;
        stock = 10;
    };

    class LIB_SOV_M3_Halftrack {
        displayName = "M3 Halftrack";
        price = 2000;
        stock = 10;
    };

    class LIB_T34_76 {
        displayName = "T34 76mm";
        price = 1800;
        stock = 10;
		code = "(_this select 2) removeMagazine 'LIB_50x_OF350_HE';";
    };

    class LIB_T34_85 {
        displayName = "T34 85mm";
        price = 4000;
        stock = 10;
		code = "(_this select 2) removeMagazine 'LIB_36x_O365_HE';";
    };

    class LIB_M4A2_SOV {
        displayName = "M4A2";
        price = 4000;
        stock = 10;
		code = "(_this select 2) removeMagazine 'LIB_60x_M42A1_M1_HE';";
    };

	class LIB_JS2_43 {
        displayName = "JS2";
        price = 1800;
        stock = 10;
		code = "(_this select 2) removeMagazine 'LIB_16x_OF471_HE';";
    };
	
	class LIB_SU85 {
        displayName = "SU85";
        price = 6000;
        stock = 10;
		code = "(_this select 2) removeMagazine 'LIB_25x_O365_HE';";
    };
	/*
    class LIB_P39 {
        displayName = "P39";
        price = 20000;
        stock = 1;
		code = "deleteVehicle (_this select 2); [false] call HoldingPoint_choosePilot_fnc_open; [(_this select 1), (getPos player)] execVM 'functions/common/fn_planeSpawn.sqf';";
    };
	
	class LIB_Pe2 {
        displayName = "Pe2";
        price = 20000;
        stock = 1;
		code = "deleteVehicle (_this select 2); [true] call HoldingPoint_choosePilot_fnc_open; [(_this select 1), (getPos player)] execVM 'functions/common/fn_planeSpawn.sqf';";
    };
	
	class LIB_Li2 {
        displayName = "Li2";
        price = 20000;
        stock = 1;
		code = "deleteVehicle (_this select 2); [true] call HoldingPoint_choosePilot_fnc_open; [(_this select 1), (getPos player)] execVM 'functions/common/fn_planeSpawn.sqf';";
    };
	*/
};
