#include "component.hpp"

params ["","_unit"];

private _vestHidden = _unit getVariable [QGVAR(vestHidden),false];
_unit setVariable [QGVAR(vestHidden),!_vestHidden];

// unhide
if (_vestHidden) then {
    private _loadout = getUnitLoadout _unit;
    _loadout set [4,_unit getVariable QGVAR(originalVest)];
    _unit setUnitLoadout [_loadout,false];

// hide
} else {
    private _loadout = getUnitLoadout _unit;
    private _primaryVestArray = _loadout param [4,[]];
    _unit setVariable [QGVAR(originalVest),_primaryVestArray];
    removeVest _unit;
};
