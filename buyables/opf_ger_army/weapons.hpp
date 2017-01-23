class Weapons {
	displayName = "Weapons & Accessories";
	kindOf = "Weapons";
	class LIB_MP40 {
		displayName = "MP40 Mashienenpistole + 2 Magazins";
		price = 550;
		stock = 20;
		code = "(_this select 0) addItemToVest 'LIB_32Rnd_9x19'; (_this select 0) addItemToVest 'LIB_32Rnd_9x19';";
	};
	class LIB_MP44 {
		displayName = "Sturmgewehr 44 + 2 Magazins";
		price = 1200;
		stock = 10;
		code = "(_this select 0) addItemToVest 'lib_30Rnd_792x33'; (_this select 0) addItemToVest 'lib_30Rnd_792x33';";
	};
	class LIB_K98 {
		displayName = "K98k + 2 Magazins";
		price = 300;
		stock = 300;
		code = "(_this select 0) addItemToVest 'lib_5Rnd_792x57'; (_this select 0) addItemToVest 'lib_5Rnd_792x57';";
	};
	class LIB_K98ZF39 {
		displayName = "Kar98k ZF39 + 2 Magazins";
		price = 2500;
		stock = 1;
		code = "(_this select 0) addItemToVest 'lib_5Rnd_792x57'; (_this select 0) addItemToVest 'lib_5Rnd_792x57';";
	};
	class LIB_G43 {
		displayName = "G43 + 2 Magazins";
		price = 700;
		stock = 25;
		code = "(_this select 0) addItemToVest 'lib_5Rnd_792x57'; (_this select 0) addItemToVest 'lib_5Rnd_792x57';";
	};
	class LIB_MG42 {
		displayName = "MG42 + 1 Magazins";
		price = 800;
		stock = 30;
		code = "(_this select 0) addItemToVest 'lib_50Rnd_792x57';";
	};
	class LIB_RPzB {
		displayName = "Raketenpanzerbüchse + 1 Rocket";
		price = 1200;
		stock = 5;
		code = "(_this select 0) addItemToBackpack 'LIB_1Rnd_RPzB';";
	};
};
