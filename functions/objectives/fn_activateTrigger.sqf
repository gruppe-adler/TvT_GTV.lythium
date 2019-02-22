#include "component.hpp"

params ["_trigger"];

_trigger setTriggerStatements ["gtv_vip in thisList",QUOTE([ARR_2(thisTrigger,thisList)] call FUNC(onTriggerActivated)),QUOTE([ARR_2(thisTrigger,thisList)] call FUNC(onTriggerDeactivated))];

private _taskTitle = _trigger getVariable [QGVAR(taskTitle),""];
private _taskDescription = _trigger getVariable [QGVAR(taskDescription),""];
private _taskType = _trigger getVariable [QGVAR(taskType),""];

[_trigger,_taskTitle,_taskDescription,_taskType] call FUNC(createTaskWest);
