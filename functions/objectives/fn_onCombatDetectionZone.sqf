/* activated when local player walks into combat detection zone trigger */

#include "component.hpp"

params ["_thisTrigger","_entered"];

private _currentCombatDetectionZones = player getVariable [QGVAR(combatDetectionZonesIn),[]];

if (_entered) then {
    player setVariable [QGVAR(combatDetectionZonesIn),_currentCombatDetectionZones + [_thisTrigger]];
} else {
    player setVariable [QGVAR(combatDetectionZonesIn),_currentCombatDetectionZones - [_thisTrigger]];
};
