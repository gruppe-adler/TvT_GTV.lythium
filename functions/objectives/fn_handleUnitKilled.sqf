#include "component.hpp"

params ["_unit","_killer","_instigator","_useEffects"];

if (!local _unit) exitWith {};

private _dmgSource = _unit getVariable ["ACE_medical_lastDamageSource",_unit];
private _dmgSide = side (group _dmgSource);
