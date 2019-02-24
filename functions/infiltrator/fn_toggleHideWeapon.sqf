#include "component.hpp"

params ["","_unit"];

private _weaponHidden = _unit getVariable [QGVAR(weaponHidden),false];
_unit setVariable [QGVAR(weaponHidden),!_weaponHidden];

// unhide
if (_weaponHidden) then {
    private _loadout = getUnitLoadout _unit;
    _loadout set [0,_unit getVariable QGVAR(originalPrimaryWeapon)];
    _unit setUnitLoadout [_loadout,false];

// hide
} else {
    private _loadout = getUnitLoadout _unit;
    private _primaryWeaponArray = _loadout param [0,[]];
    _unit setVariable [QGVAR(originalPrimaryWeapon),_primaryWeaponArray];
    _unit removeWeapon primaryWeapon _unit;
};
