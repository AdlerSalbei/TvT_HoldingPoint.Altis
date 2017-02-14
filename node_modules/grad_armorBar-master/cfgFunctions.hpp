#ifndef MODULES_DIRECTORY
    #define MODULES_DIRECTORY modules
#endif

class GRAD_amb {
	
	class functions {
		file = MODULES_DIRECTORY\grad-armorBar\functions\common;
		class armorCalc {};
		class armorInit { postInit = 1;};
		class subMenu {};
	};
};

