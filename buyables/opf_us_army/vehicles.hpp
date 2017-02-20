class Vehicles {
    permissionLevel = 3;

    displayName = "Vehicles";
    kindOf = "Vehicles";
    spawnEmpty = 1;
	
	class LIB_US_Willys_MB {
        displayName = "Willys";
        price = 2000;
        stock = 10;
    };
		
	class LIB_US_GMC_Open {
        displayName = "GMC open";
        price = 4000;
        stock = 20;
    };
	
	class LIB_US_GMC_Tent {
        displayName = "GMC tent";
        price = 4000;
        stock = 20;
    };
	
	class LIB_US_Scout_M3_FFV {
        displayName = "Scout M3";
		description = "Scout Version of the M3 with M2.";
        price = 4500;
        stock = 5;
    };
	
	class LIB_US_M3_Halftrack {
        displayName = "M3 Halftrack";
		description = "M3 Halftrack with M2.";
        price = 5000;
        stock = 10;
    };
	
	class LIB_US6_BM13 {
        displayName = "US6 BM13";
		description = "Mortar Vehicle.";
        price = 9000;
        stock = 5;
    };
	
	class LIB_M4A3_75{
        displayName = "Sherman M4A3";
        price = 6000;
        stock = 3;
		code = "(_this select 2) removeMagazine 'LIB_60x_M42A1_M1_HE';";
    };
	
	class LIB_P47 {
		permissionLevel = 4;
		kindOf = "Other";
        displayName = "P47";
		description = "Jagdbomber ";
        price = 12000;
        stock = 1;
		code = " [(_this select 1), (getPos player)] call uo_fnc_planeSpawn;";
    };
};