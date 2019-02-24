#include "component.hpp"

params ["_unit","_tunnelEntrance"];

private _targetPosASL = getPosASL _tunnelEntrance;

private _unitType = typeOf _unit;
private _emptyPosASL = [0,0,0];
for "_i" from 0 to 10 do {
    private _emptyPos = _targetPosASL findEmptyPosition [0,5 + _i*2,_unitType];
    if (count _emptyPos > 0) exitWith {_emptyPosASL = AGLToASL _emptyPos};
};
if (count _emptyPosASL == 0) then {_emptyPosASL = _targetPosASL};

titleCut ["","BLACK OUT",0];
titleCut ["","BLACK IN",1.5];

_unit allowDamage false;
_unit setPosASL _targetPosASL;
[{_this allowDamage true},_unit,2] call CBA_fnc_waitAndExecute;
