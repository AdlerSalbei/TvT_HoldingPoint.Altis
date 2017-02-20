class us_wood {
	class AllUnits {
        primaryWeapon = "";
		primaryWeaponMuzzle = "";
        primaryWeaponOptics = "";
		primaryWeaponPointer = "";
		primaryWeaponMagazine = "";
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		secondaryWeaponUnderbarrelMagazine = "";
		handgunWeapon = "LIB_Colt_M1911";
		handgunWeaponMagazine = "LIB_7Rnd_45ACP";
		handgunWeaponUnderbarrelMagazine = "";
		uniform = "U_LIB_US_Private";
        vest = "V_LIB_US_Vest_Garand";
		backpack = "B_LIB_US_Backpack";
		headgear = "H_LIB_US_Helmet";
		nvgoggles = "";
		radio = "";
		binoculars = "";
		map = "ItemMap";
		gps = "";
		compass = "";
        addItemsToUniform[] = {
			LIST_6("ACE_fieldDressing"),
			LIST_2("ACE_morphine"),
			"ACE_epinephrine",
			LIST_2("LIB_7Rnd_45ACP")
	  	};
		addItemsToVest[] = {};
        addItemsToBackpack[] = {};
	};

	class Type {
        //rifleman
		class Soldier_F {
			primaryWeapon = "LIB_M1_Garand";
			primaryWeaponMagazine = "LIB_8Rnd_762x63";
			addItemsToVest[] = {
				LIST_7("LIB_8Rnd_762x63")
			};
		};

        //autorifleman
		class Soldier_AR_F {
			primaryWeapon = "LIB_M1918A2_BAR";
			primaryWeaponMagazine = "LIB_20Rnd_762x63";
			vest = "V_LIB_US_Vest_Bar";
			backpack = "B_LIB_US_MGbag";
			addItemsToVest[] = {
				"LIB_20Rnd_762x63"
				};
			addItemsToBackpack[] = {
				LIST_4("LIB_20Rnd_762x63")
			};
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
			secondaryWeapon = "LIB_M1A1_Bazooka";
			secondaryWeaponMagazine = "LIB_1Rnd_60mm_M6";
			backpack = "B_LIB_US_RocketBag";
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
			uniform = "U_LIB_US_Private_1st";
			vest = "V_LIB_US_Vest_Asst_MG";
			backpack = "B_LIB_US_MGbag";
			addItemsToBackpack[] = {
				LIST_4("LIB_20Rnd_762x63")
			};
		};

        //medic
		class Medic_F: Soldier_F {
			uniform = "U_LIB_US_Med";
			vest = "V_LIB_US_Vest_Medic";
			backpack = "B_LIB_US_MedicBackpack_Empty";
			headgear = "H_LIB_US_Helmet_Med";
			addItemsToBackpack[] = {
				LIST_20("ACE_fieldDressing"),
				LIST_10("ACE_fieldDressing"),
				LIST_15("ACE_morphine"),
				LIST_15("ACE_epinephrine"),
				LIST_2("ACE_bloodIV_250")
			};
		};

        //squad leader
        class Soldier_SL_F: Soldier_F {
			uniform = "U_LIB_US_Sergant";
			vest = "V_LIB_US_Vest_Carbine";
			headgear = "H_LIB_US_Helmet_Cap";
			addItemsToUniform[] = {
				"ACE_MapTools"
			 };
			binoculars = "LIB_Binocular_US";
			map = "ItemMap";
			compass = "ItemCompass";
        };

        //team leader
		class Soldier_TL_F: Soldier_F {
			uniform = "U_LIB_US_Sergant";
			vest = "V_LIB_US_Vest_Carbine";
			headgear = "H_LIB_US_Helmet_Cap";
			addItemsToUniform[] = {
				"ACE_MapTools"
			 };
			binoculars = "LIB_Binocular_US";
			map = "ItemMap";
			compass = "ItemCompass";
		};
	};
};
