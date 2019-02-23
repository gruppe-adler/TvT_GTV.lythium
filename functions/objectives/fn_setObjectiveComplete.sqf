#include "component.hpp"

params ["_trigger","_successful"];

_trigger setTriggerActivation ["WEST","PRESENT",true];
_trigger setTriggerStatements ["this","",""];

private _timeoutHandle = _trigger getVariable QGVAR(timeoutHandle);
if (!isNil "_timeoutHandle") then {
    [_handle] call CBA_fnc_removePerFrameHandler;
    _trigger setVariable [QGVAR(timeoutHandle),nil,false];
};

private _task = _trigger getVariable [QGVAR(taskWest),""];
if (_task != "") then {
    [_task,["CANCELED","SUCCEEDED"] select _successful,true] call BIS_fnc_taskSetState;
} else {
    ERROR_1("TaskID for objective %1 undefined.",_trigger getVariable [QGVAR(taskTitleWest),"UNDEFINED"]);
};

[_task,_trigger] call FUNC(onObjectiveCompleted);
