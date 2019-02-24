#include "component.hpp"

params ["","_unit"];

private _isDisguised = _unit getVariable [QGVAR(isDisguised),false];
if (!_isDisguised) then {
    _unit setVariable [QGVAR(originalUniform),uniform _unit];
    _unit setVariable [QGVAR(originalHeadgear),headgear _unit];
    _unit setVariable [QGVAR(originalGoggles),goggles _unit];
    _unit setVariable [QGVAR(originalFace),face _unit];
    _unit setVariable [QGVAR(originalGroup),group _unit];

    if (_unit getVariable [QGVAR(weaponHidden),false]) then {
        _grp = createGroup [civilian,true];
        [_unit] joinSilent _grp;
        ["RegisterGroup", [_grp,_unit,[nil, "Infiltrator", false]]] call BIS_fnc_dynamicGroups;
        ["gtv_notification1",["Disguised","Enemy AI will no longer detect you."]] call BIS_fnc_showNotification;

    } else {
        ["gtv_notification1",["Clothes changed","Enemy AI will still detect you, because of your weapon."]] call BIS_fnc_showNotification;
    };
};

_unit setVariable [QGVAR(isDisguised),true,true];

_unit forceAddUniform selectRandom GRAD_CIVS_CLOTHES;

removeHeadgear _unit;
_unit addHeadgear selectRandom GRAD_CIVS_HEADGEAR;

removeGoggles _unit;
if (50 < random 100) then {
    _unit addGoggles selectRandom GRAD_CIVS_GOGGLES;
};

[_unit,selectRandom GRAD_CIVS_FACES] remoteExec ["setFace",0,false];
