#include "component.hpp"

params ["","_unit"];

private _weaponHidden = _unit getVariable [QGVAR(weaponHidden),false];
_unit setVariable [QGVAR(weaponHidden),!_weaponHidden];

// unhide
if (_weaponHidden) then {
    private _loadout = getUnitLoadout _unit;
    _loadout set [0,_unit getVariable QGVAR(originalPrimaryWeapon)];
    _unit setUnitLoadout [_loadout,false];

    private _grp = createGroup [east,true];
    [_unit] joinSilent _grp;
    ["RegisterGroup", [_grp,_unit,[nil, "Infiltrator", false]]] call BIS_fnc_dynamicGroups;
    ["gtv_notification1",["Undisguised","Enemy AI will fire on you."]] call BIS_fnc_showNotification;


// hide
} else {

    private _loadout = getUnitLoadout _unit;
    private _primaryWeaponArray = _loadout param [0,[]];
    _unit setVariable [QGVAR(originalPrimaryWeapon),_primaryWeaponArray];
    _unit removeWeapon primaryWeapon _unit;

    if (_unit getVariable [QGVAR(isDisguised),false]) then {
        _grp = createGroup [civilian,true];
        [_unit] joinSilent _grp;
        ["RegisterGroup", [_grp,_unit,[nil, "Infiltrator", false]]] call BIS_fnc_dynamicGroups;
        ["gtv_notification1",["Disguised","Enemy AI will no longer detect you."]] call BIS_fnc_showNotification;

    } else {
        ["gtv_notification1",["Weapon hidden","Enemy AI will still detect you, because of your clothes."]] call BIS_fnc_showNotification;
    };
};
