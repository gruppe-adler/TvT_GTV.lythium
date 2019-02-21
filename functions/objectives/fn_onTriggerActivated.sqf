#include "component.hpp"

params ["_trigger","_thisList"];

private _handle = _trigger getVariable QGVAR(timeoutHandle);
if (!isNil "_handle") exitWith {};

_handle = [{
    params ["_trigger","_handle"];

    private _timeLeft = _trigger getVariable [QGVAR(vipTriggerTimeleft),999999];

    if (_timeLeft == 0) exitWith {
        _trigger setVariable [QGVAR(timeoutHandle),nil,false];
        [_handle] call CBA_fnc_removePerFrameHandler;

        private _task = _trigger getVariable [QGVAR(taskWest),""];
        if (_task != "") then {
            [_task,"SUCCEEDED",true] call BIS_fnc_taskSetState;
        } else {
            ERROR_1("TaskID for objective %1 undefined.",_trigger getVariable [QGVAR(taskTitleWest),"UNDEFINED"]);
        };

        [_task,_trigger] call FUNC(onObjectiveCompleted);
    };

    if (triggerActivated _trigger) then {
        _trigger setVariable [QGVAR(vipTriggerTimeleft),_timeLeft - 1];
    };

},1,_trigger] call CBA_fnc_addPerFrameHandler;

_trigger setVariable [QGVAR(timeoutHandle),_handle,false];
