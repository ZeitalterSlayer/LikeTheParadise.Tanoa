#include "..\script_macros.hpp"
_bar = abschlepphof3;

if(100000 > CASH) exitWith {titleText["Du besitzt nicht genug Geld.","PLAIN"];};

CASH = CASH - 100000;
[0] call SOCK_fnc_updatePartial;
if(100000 <= CASH) then {titleText["Du hast den Betrag bezahlt.","PLAIN"];};
_bar animate ["Door_1_rot", 1];
sleep 5;
_bar animate ["Door_1_rot", 0];