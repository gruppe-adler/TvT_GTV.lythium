#include "component.hpp"

params ["_trigger","_taskTitle","_taskDescription","_taskType"];

if (isNil QGVAR(tasksWest)) then {GVAR(tasksWest) = []};

private _taskID = QGVAR(taskWest) + "_" + str count GVAR(tasksWest);
private _taskDestination = getPos _trigger;

GVAR(tasksWest) pushBack ([WEST,_taskID,[_taskDescription,_taskTitle,""],_taskDestination,"AUTOASSIGNED",1,false,_taskType,false] call BIS_fnc_taskCreate);

_trigger setVariable [QGVAR(taskWest),_taskID,true];
_trigger setVariable [QGVAR(taskTitleWest),_taskTitle,false];
