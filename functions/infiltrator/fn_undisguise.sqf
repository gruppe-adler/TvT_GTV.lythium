#include "component.hpp"

params ["","_unit"];

_unit setVariable [QGVAR(isDisguised),false,true];

_unit forceAddUniform (_unit getVariable QGVAR(originalUniform));

removeHeadgear _unit;
_unit addHeadgear (_unit getVariable QGVAR(originalHeadgear));

removeGoggles _unit;
_unit addGoggles (_unit getVariable QGVAR(originalGoggles));

[_unit,_unit getVariable QGVAR(originalFace)] remoteExec ["setFace",0,false];
