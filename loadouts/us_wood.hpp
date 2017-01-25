class us_wood {
	class AllUnits {
        primaryWeapon = "";
		primaryWeaponMuzzle = "";
        primaryWeaponOptics = "";
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		secondaryWeapon = "";
		handgunWeapon = "LIB_Colt_M1911";
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

		};

        //autorifleman
		class Soldier_AR_F {
			
		};

        //light AT
		class Soldier_LAT_F {
			
		};

        //ammo bearer
		class Soldier_A_F {
			
		};

        //medic
		class Medic_F {
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
        class Soldier_SL_F {
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
		class Soldier_TL_F {
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
