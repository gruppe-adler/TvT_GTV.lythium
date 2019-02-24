/* executed on server only */

#include "component.hpp"

params ["_builder","_uav"];

[_uav] remoteExec ["createVehicleCrew",_builder,false];
[_uav] remoteExec [QFUNC(addPackupInteraction),0,_uav];

if (typeOf _uav == "O_Static_Designator_02_F") then {
    _builder setVariable [QGVAR(remoteDesignatorsLeft),(_builder getVariable [QGVAR(remoteDesignatorsLeft),0]) - 1,true];
};

if (typeOf _uav == "O_UAV_01_F") then {
    _builder setVariable [QGVAR(uavsLeft),(_builder getVariable [QGVAR(uavsLeft),0]) - 1,true];
    _uav disableTIEquipment true;
};
