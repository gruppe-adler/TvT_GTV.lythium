/* Extended EH (see description.ext) */

#include "component.hpp"

params ["","_uav"];

private _type = typeOf _uav;
if !(_type in ["O_UAV_01_F","O_Static_Designator_02_F"]) exitWith {};

if (typeOf _uav == "O_UAV_01_F") then {
    _uav disableTIEquipment true;
};

[_uav] remoteExec [QFUNC(addPackupInteraction),0,_uav];
