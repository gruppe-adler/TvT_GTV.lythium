#include "component.hpp"

if (!isServer) exitWith {};

params ["_logic",["_taskTitle","MISSING TITLE"],["_taskDescription",""],["_taskType",""]];

if (!(_logic isKindOf "LocationArea_F") && {!(_logic isKindOf "Logic")}) exitWith {ERROR_1("%1 is not an area or game logic.",_logic)};

if (isNil QGVAR(objectiveTriggers)) then {GVAR(objectiveTriggers) = []};

private _theseTriggers = _logic call bis_fnc_moduleTriggers;
GVAR(objectiveTriggers) append _x;

{
    [_x] call FUNC(initTrigger);
    [_x,_taskTitle,_taskDescription,_taskType] call FUNC(createTaskWest);
} foreach _theseTriggers;
