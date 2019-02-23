#include "component.hpp"

params ["_player"];

private _currentCombatDetectionZones = player getVariable [QGVAR(combatDetectionZonesIn),[]];

if (count _currentCombatDetectionZones > 0) then {
    [_currentCombatDetectionZones apply {_x getVariable [QGVAR(parentTrigger),objNull]}] remoteExec [QFUNC(onOpforPlayerFiredCombatZoneServer),2,false];
};
