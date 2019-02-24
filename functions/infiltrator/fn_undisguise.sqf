#include "component.hpp"

params ["","_unit"];

_unit setVariable [QGVAR(isDisguised),false,true];

_unit forceAddUniform (_unit getVariable QGVAR(originalUniform));

removeHeadgear _unit;
_unit addHeadgear (_unit getVariable QGVAR(originalHeadgear));

removeGoggles _unit;
_unit addGoggles (_unit getVariable QGVAR(originalGoggles));

[_unit,_unit getVariable QGVAR(originalFace)] remoteExec ["setFace",0,false];

private _grp = createGroup [east,true];
[_unit] joinSilent _grp;
["RegisterGroup", [_grp,_unit,[nil, "Infiltrator", false]]] call BIS_fnc_dynamicGroups;
["gtv_notification1",["Undisguised","Enemy AI will fire on you."]] call BIS_fnc_showNotification;
