#include ".\list_macros.hpp"

class Loadouts {
    resetLoadout = 0;
    baseDelay = 10;
    handleRadios = 1;

    class Faction {
        #include "ger_wood.hpp"
		#include "ger_des.hpp"
		
        #include "rus_wood.hpp"
        #include "rus_des.hpp"
		
		#include "us_wood.hpp"
		#include "us_des.hpp"
    };
};
