class Weapons {
	displayName = "Weapons";
	kindOf = "Weapons";
	class LIB_PPSh41_m {
		condition = "uo_missionParam_ISWOODLAND == 0";
		displayName = "PPSh 41 + 2 Magazins";
		description = "The PPSh is a magazine-fed selective fire submachine gun using an open-bolt, blowback action.<br/> Made largely of stamped steel, it can be loaded with either a box or drum magazine,<br/> and fires the 7.62×25mm Tokarev pistol round.";
		price = 550;
		stock = 20;
		code = "(_this select 0) addItemToVest 'lib_35Rnd_762x25'; (_this select 0) addItemToVest 'lib_35Rnd_762x25';";
	};
	class LIB_PPSh41_d {
		condition = "uo_missionParam_ISWOODLAND == 1";
		displayName = "PPSh 41 + 2 Magazins";
		description = "The PPSh is a magazine-fed selective fire submachine gun using an open-bolt, blowback action.<br/> Made largely of stamped steel, it can be loaded with either a box or drum magazine,<br/> and fires the 7.62×25mm Tokarev pistol round.";
		price = 550;
		stock = 20;
		code = "(_this select 0) addItemToVest 'lib_35Rnd_762x25'; (_this select 0) addItemToVest 'lib_35Rnd_762x25';";
	};
	class LIB_M9130 {
		displayName = "Mosin-Nagant M9130 + 2 Magazins";
		description = "The most prolific version of the Mosin–Nagant. It was produced for standard issue to all Soviet infantry from 1930 to 1945.";
		price = 300;
		stock = 150;
		code = "(_this select 0) addItemToVest 'lib_5Rnd_762x54'; (_this select 0) addItemToVest 'lib_5Rnd_762x54';";
	};
	class LIB_M38 {
		displayName = "Mosin Nagant M38 + 2 Magazins";
		description = "The M38 is essentially a M1891/30 with a shortened barrel and shortened stock (the M38 is 1000 millimeters (40 in)<br/> in overall length versus 1230 millimeters (48 in) overall length for the Model 91/30)";
		price = 300;
		stock = 100;
		code = "(_this select 0) addItemToVest 'lib_5Rnd_762x54'; (_this select 0) addItemToVest 'lib_5Rnd_762x54';";
	};
	class LIB_M44 {
		displayName = "Mosin Nagant M44 + 2 Magazins";
		description = "The M44 specifications are very similar to the M1938,<br/> with the unique addition of a permanently affixed, side-folding cruciform-spike bayonet.";
		price = 300;
		stock = 50;
		code = "(_this select 0) addItemToVest 'lib_5Rnd_762x54'; (_this select 0) addItemToVest 'lib_5Rnd_762x54';";
	};
	class LIB_SVT_40 {
		displayName = "SVT 40 + 2 Magazins";
		description = "The Samozaryadnaya Vintovka Tokareva, Obrazets 1940 goda (Tokarev Self-loading Rifle, Model of 1940)<br/> or SVT-40 is a Soviet semi-automatic battle rifle.";
		price = 700;
		stock = 25;
		code = "(_this select 0) addItemToVest 'lib_5Rnd_762x54'; (_this select 0) addItemToVest 'lib_5Rnd_762x54';";
	};
	class LIB_DP28 {
		displayName = "DP + 1 Magazins";
		description = " DP is a light machine gun firing the 7.62×54mmR cartridge that was used primarily by the Soviet Union starting in 1928.";
		price = 800;
		stock = 15;
		code = "(_this select 0) addItemToVest 'lib_47Rnd_762x54';";
	};
	class LIB_DT {
		displayName = "DT + 1 Magazins";
		description = "DT is a light machine gun firing the 7.62×54mmR cartridge.";
		price = 800;
		stock = 10;
		code = "(_this select 0) addItemToVest 'lib_63Rnd_762x54';";
	};
	class LIB_DT_OPTIC {
		displayName = "DT with optic + 1 Magazins";
		description = "DT is a light machine gun firing the 7.62×54mmR cartridge";
		price = 1000;
		stock = 5;
		code = "(_this select 0) addItemToVest 'lib_63Rnd_762x54';";
	};
	class LIB_M9130PU {
		displayName = "Mosin-Nagant M9130 PU + 2 Magazins";
		description = "Mosin-Nagant M9130 with a Sniper Scope";
		price = 2500;
		stock = 1;
		code = "(_this select 0) addItemToVest 'lib_5Rnd_762x54'; (_this select 0) addItemToVest 'lib_5Rnd_762x54';";
	};
	class LIB_M1A1_Bazooka {
		displayName = "M1A1 Bazooka + 1 Rocket";
		description = "Bazooka is the common name for a man-portable recoilless anti-tank rocket launcher weapon, widely fielded by the United States Army.";
		price = 1200;
		stock = 5;
		code = "(_this select 0) addItemToBackpack 'LIB_1Rnd_60mm_M6';";
	};
};
