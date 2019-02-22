#include "component.hpp"

params ["_unit","_killer","_instigator","_useEffects"];

if (!local _unit) exitWith {};

private _dmgSource = _unit getVariable ["ACE_medical_lastDamageSource",_unit];
private _dmgSide = side (group _dmgSource);

// VIP killed
private _vip = missionNamespace getVariable ["gtv_vip",objNull];
if (!isNull _vip && {_unit == _vip}) exitWith {
    ["OPFOR WINS!","VIP killed.",WEST] remoteExec [QEFUNC(endings,endMissionServer),2,false];
};
