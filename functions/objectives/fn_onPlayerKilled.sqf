#include "component.hpp"

params ["_player"];

private _vip = missionNamespace getVariable ["gtv_vip",objNull];
if (!isNull _player && {_player == _vip}) exitWith {};

private _killer = _player getVariable ["ace_medical_lastDamageSource", objNull];

// killed by unknown
private _killerSide = side _killer;
if !(_killerSide in [WEST,EAST,INDEPENDENT]) exitWith {};

// killed by team
if (playerSide == _killerSide) exitWith {};

private _currentCombatDetectionZones = player getVariable [QGVAR(combatDetectionZonesIn),[]];

if (count _currentCombatDetectionZones > 0) then {
    [_currentCombatDetectionZones apply {_x getVariable [QGVAR(parentTrigger),objNull]}] remoteExec [QFUNC(onPlayerKilledCombatZoneServer),2,false];
};
