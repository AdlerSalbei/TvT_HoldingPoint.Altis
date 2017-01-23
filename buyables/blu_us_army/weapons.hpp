class Weapons {
    displayName = "Weapons & Accessories";
    kindOf = "Weapons";

    class LIB_M1A1_Thompson {
        displayName = "M1A1 Thompson + 2 Magazins";
        price = 550;
        stock = 20;
		code = "(_this select 0) addItemToVest 'LIB_30Rnd_45ACP'; (_this select 0) addItemToVest 'LIB_30Rnd_45ACP';";
    };
			
	class LIB_M1_Garand {
        displayName = "M1 Grand + 2 Magazins";
        price = 300;
        stock = 300;
		code = "(_this select 0) addItemToVest 'LIB_8Rnd_762x63'; (_this select 0) addItemToVest 'LIB_8Rnd_762x63';";
    };
	
	class LIB_M1_Carbine {
        displayName = "M1 Carbine + 2 Magazins";
        price = 700;
        stock = 25;
		code = "(_this select 0) addItemToVest 'LIB_15Rnd_762x33'; (_this select 0) addItemToVest 'LIB_15Rnd_762x33';";
    };	
	
	class LIB_M1903A4_Springfield {
        displayName = "M1903A4 Springfield + 2 Magazins";
        price = 2500;
        stock = 1;
		code = "(_this select 0) addItemToVest 'LIB_5Rnd_762x63'; (_this select 0) addItemToVest 'LIB_5Rnd_762x63';";
    };
		
	class LIB_M1918A2_BAR {
        displayName = "BAR M1918 + 1 Magazins";
        price = 800;
        stock = 30;
		code = "(_this select 0) addItemToVest 'LIB_20Rnd_762x63';";
    };
	
	class LIB_M1A1_Bazooka {
        displayName = "M1A1 Bazooka  + 1 Rocket";
        price = 1200;
        stock = 5;
		code = "(_this select 0) addItemToBackpack 'LIB_1Rnd_60mm_M6';";
    };
};
