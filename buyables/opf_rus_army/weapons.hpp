class Weapons {
    displayName = "Weapons";
    kindOf = "Weapons";

    class LIB_PPSh41_m {
	condition = "uo_missionParam_ISWOODLAND";
        displayName = "PPSh 41 + 2 Magazins";
	price = 550;
	stock = 20;
	code = "(_this select 0) addItemToVest 'lib_35Rnd_762x25'; (_this select 0) addItemToVest 'lib_35Rnd_762x25';";	
    };

    class LIB_PPSh41_d {
	condition = "!uo_missionParam_ISWOODLAND";
        displayName = "PPSh 41 + 2 Magazins";
        price = 550;
        stock = 20;
	code = "(_this select 0) addItemToVest 'lib_35Rnd_762x25'; (_this select 0) addItemToVest 'lib_35Rnd_762x25';";
    };

    class LIB_M9130 {
        displayName = "Mosin-Nagant M9130 + 2 Magazins";
        price = 300;
        stock = 150;
	code = "(_this select 0) addItemToVest 'lib_5Rnd_762x54'; (_this select 0) addItemToVest 'lib_5Rnd_762x54';";
    };

    class LIB_M38 {
        displayName = "Mosin Nagant M38 + 2 Magazins";
        price = 300;
        stock = 100;
	code = "(_this select 0) addItemToVest 'lib_5Rnd_762x54'; (_this select 0) addItemToVest 'lib_5Rnd_762x54';";
    };

    class LIB_M44 {
        displayName = "Mosin Nagant M44 + 2 Magazins";
        price = 300;
        stock = 50;
	   code = "(_this select 0) addItemToVest 'lib_5Rnd_762x54'; (_this select 0) addItemToVest 'lib_5Rnd_762x54';";
    };
	class LIB_SVT_40 {
        displayName = "SVT 40 + 2 Magazins";
        price = 700;
        stock = 25;
	code = "(_this select 0) addItemToVest 'lib_5Rnd_762x54'; (_this select 0) addItemToVest 'lib_5Rnd_762x54';";
    };
	class LIB_DP28 {
        displayName = "DP + 1 Magazins";
        price = 800;
        stock = 15;
	code = "(_this select 0) addItemToVest 'lib_47Rnd_762x54';";
    };
	class LIB_DT {
        displayName = "DT + 1 Magazins";
        price = 800;
        stock = 10;
	code = "(_this select 0) addItemToVest 'lib_63Rnd_762x54';";
    };
	class LIB_DT_OPTIC {
        displayName = "DT with optic + 1 Magazins";
        price = 1000;
        stock = 5;
	code = "(_this select 0) addItemToVest 'lib_63Rnd_762x54';";
    };
	class LIB_M9130PU {
        displayName = "Mosin-Nagant M9130 PU + 2 Magazins";
        price = 2500;
        stock = 1;
	code = "(_this select 0) addItemToVest 'lib_5Rnd_762x54'; (_this select 0) addItemToVest 'lib_5Rnd_762x54';";
    };
};
