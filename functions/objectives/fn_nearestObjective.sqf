#include "component.hpp"

params ["_searchPos"];

private _objectives = missionNamespace getVariable [QGVAR(objectiveTriggers),[]];

private _nearestObjective = objNull;
private _nearestDist = 1e10;

{
    private _thisDist = _searchPos distance _x;
    if (_thisDist < _nearestDist) then {
        _nearestDist = _thisDist;
        _nearestObjective = _x;
    };
} forEach _objectives;

_nearestObjective
