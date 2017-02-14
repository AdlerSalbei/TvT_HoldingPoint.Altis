class rus_wood {
	class AllUnits {
        primaryWeapon = "";
		primaryWeaponMuzzle = "";
        primaryWeaponOptics = "";
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		secondaryWeapon = "";
		handgunWeapon = "LIB_TT33";
		uniform = "U_LIB_SOV_Efreitor_summer";
        vest = "V_LIB_SOV_RA_MosinBelt";
		backpack = "B_LIB_SOV_RA_Rucksack_Green";
		headgear = "H_LIB_SOV_RA_Helmet";
		nvgoggles = "";
		radio = "";
		binoculars = "";
		map = "ItemMap";
		gps = "";
		compass = "";
        addItemsToUniform[] = {
			LIST_6("ACE_fieldDressing"),
			LIST_2("ACE_morphine"),
			LIST_2("lib_8Rnd_762x25"),
			"ACE_epinephrine"
	  	};
		addItemsToVest[] = {};
        addItemsToBackpack[] = {};
	};

	cclass Type {
        //rifleman
		class Soldier_F {
			primaryWeapon = "LIB_M9130";
			addItemsToVest[] = {
				LIST_7("lib_5Rnd_762x54")
			};
		};

        //autorifleman
		class Soldier_AR_F: Soldier_F {
			primaryWeapon = "LIB_DP28";
			headgear = "H_LIB_SOV_Ushanka";
			vest = "V_LIB_SOV_RA_MGBelt";
			backpack = "B_LIB_SOV_RA_MGAmmoBag";
			addItemsToVest[] = {
				"lib_47Rnd_762x54"
			};
			addItemsToBackpack[] = {
				LIST_2("lib_47Rnd_762x54")
			};
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
			secondaryWeapon = "LIB_M1A1_Bazooka";
			addItemsToBackpack[] = {
				"LIB_1Rnd_60mm_M6"
			};
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
			vest = "V_LIB_SOV_IShBrVestMG";
			backpack = "B_LIB_SOV_RA_MGAmmoBag";
			addItemsToBackpack[] = {
				LIST_2("lib_47Rnd_762x54")
			};
		};

        //medic
		class Medic_F {
			backpack = "B_LIB_SOV_RA_MedicalBag_Empty";
			addItemsToBackpack[] = {
				LIST_20("ACE_fieldDressing"),
				LIST_10("ACE_fieldDressing"),
				LIST_15("ACE_morphine"),
				LIST_15("ACE_epinephrine"),
				LIST_2("ACE_bloodIV_250")
			};
		};

        //squad leader
        class Soldier_SL_F {
			uniform = "U_LIB_SOV_Kapitan_summer";
			vest = "V_LIB_SOV_RAZV_OfficerVest";
			headgear = "H_LIB_SOV_RA_OfficerCap";
			addItemsToUniform[] = {
				"ACE_MapTools"
			};

			binoculars = "LIB_Binocular_SU";
			map = "ItemMap";
			compass = "ItemCompass";	
        };

        //team leader
		class Soldier_TL_F {
			uniform = "U_LIB_SOV_Kapitan_summer";
			vest = "V_LIB_SOV_RAZV_OfficerVest";
			headgear = "H_LIB_SOV_RA_OfficerCap";
			addItemsToUniform[] = {
				"ACE_MapTools"
			};

			binoculars = "LIB_Binocular_SU";
			map = "ItemMap";
			compass = "ItemCompass";
		};
	};
};
