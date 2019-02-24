#include "component.hpp"

params ["_unit"];

if (isNil QGVAR(diggerTunnelMinDistToObj)) then {GVAR(diggerTunnelMinDistToObj) = [missionConfigFile >> "cfgMission","diggerTunnelMinDistToObj",250] call BIS_fnc_returnConfigEntry};

["Land_SewerCover_03_F","NORMAL"] call grad_fortifications_fnc_startPlacement;
