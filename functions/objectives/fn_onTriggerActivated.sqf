#include "component.hpp"

params ["_trigger","_thisList"];

private _handle = _trigger getVariable QGVAR(timeoutHandle);
if (!isNil "_handle") exitWith {};

_handle = [{
    params ["_trigger","_handle"];

    private _timeLeft = _trigger getVariable [QGVAR(vipTriggerTimeleft),999999];

    if (_timeLeft == 0) exitWith {
        [_trigger,true] call FUNC(setObjectiveComplete);
    };

    if (triggerActivated _trigger) then {
        _trigger setVariable [QGVAR(vipTriggerTimeleft),_timeLeft - 1];
    };

},1,_trigger] call CBA_fnc_addPerFrameHandler;

_trigger setVariable [QGVAR(timeoutHandle),_handle,false];
