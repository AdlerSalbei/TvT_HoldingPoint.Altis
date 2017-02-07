class Weapons {
	displayName = "Weapons & Accessories";
	kindOf = "Weapons";
	class LIB_MP40 {
		displayName = "MP40 Mashienenpistole + 2 Magazins";
		description = "The MP 40 (Maschinenpistole 40) was a submachine gun chambered for the 9×19mm Parabellum cartridge.";
		price = 550;
		stock = 20;
		code = "(_this select 0) addItemToVest 'LIB_32Rnd_9x19'; (_this select 0) addItemToVest 'LIB_32Rnd_9x19';";
	};
	class LIB_MP44 {
		displayName = "STG44 + 2 Magazins";
		description = "The StG 44 (abbreviation of Sturmgewehr 44, assault rifle 44) is a German selective-fire rifle developed during World War II.";
		price = 1200;
		stock = 10;
		code = "(_this select 0) addItemToVest 'lib_30Rnd_792x33'; (_this select 0) addItemToVest 'lib_30Rnd_792x33';";
	};
	class LIB_K98 {
		displayName = "K98k + 2 Magazins";
		description = "The Karabiner 98 kurz (carbine 98 short, often abbreviated as Kar98k, or K98k) is a bolt-action rifle chambered for the 7.92×57mm Mauser cartridge.";
		price = 300;
		stock = 300;
		code = "(_this select 0) addItemToVest 'lib_5Rnd_792x57'; (_this select 0) addItemToVest 'lib_5Rnd_792x57';";
	};
	class LIB_K98ZF39 {
		displayName = "Kar98k ZF39 + 2 Magazins";
		description = "Karabiner 98 with Zeiss Zielvier 4x (ZF39).";
		price = 2500;
		stock = 1;
		code = "(_this select 0) addItemToVest 'lib_5Rnd_792x57'; (_this select 0) addItemToVest 'lib_5Rnd_792x57';";
	};
	class LIB_G43 {
		displayName = "G43 + 2 Magazins";
		description = "The Gewehr 43 or G43 is a 7.92×57mm Mauser caliber semi-automatic rifle.";
		price = 700;
		stock = 25;
		code = "(_this select 0) addItemToVest 'lib_5Rnd_792x57'; (_this select 0) addItemToVest 'lib_5Rnd_792x57';";
	};
	class LIB_MG42 {
		displayName = "MG42 + 1 Magazins";
		description = "The MG 42 (shortened from German: Maschinengewehr 42) is a 7.92×57mm Mauser general purpose machine gun.";
		price = 800;
		stock = 30;
		code = "(_this select 0) addItemToVest 'lib_50Rnd_792x57';";
	};
	class LIB_RPzB {
		displayName = "Panzerschreck + 1 Rocket";
		description = "Panzerschreck was the popular name for the Raketenpanzerbüchse (abbreviated to RPzB), an 88 mm calibre reusable anti-tank rocket launcher.";
		price = 1200;
		stock = 5;
		code = "(_this select 0) addItemToBackpack 'LIB_1Rnd_RPzB';";
	};
};
