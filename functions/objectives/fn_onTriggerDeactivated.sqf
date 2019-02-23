#include "component.hpp"

params ["_trigger","_thisList"];

if (isNil {_trigger getVariable QGVAR(timeoutHandle)}) exitWith {};

private _vipObjectiveTimeoutCancel = _trigger getVariable [QGVAR(vipObjectiveTimeoutCancel),10];
private _notificationMessage = format ["Get back into the area within %1s!",_vipObjectiveTimeoutCancel];
["gtv_notification1",["Left the objective!",_notificationMessage]] remoteExec ["BIS_fnc_showNotification",missionNamespace getVariable ["gtv_vip",objNull],false];

private _fnc_cancelTimeout = {
    _this setVariable [QGVAR(vipTriggerTimeleft),_this getVariable [QGVAR(vipTriggerTimeout),60],false];

    private _timeoutHandle = _this getVariable QGVAR(timeoutHandle);
    if (isNil "_timeoutHandle") exitWith {};

    [_timeoutHandle] call CBA_fnc_removePerFrameHandler;
    _this setVariable [QGVAR(timeoutHandle),nil];

    ["gtv_notification1",["Objective reset!","The objective's timer has been reset."]] remoteExec ["BIS_fnc_showNotification",missionNamespace getVariable ["gtv_vip",objNull],false];
};
[{triggerActivated _this},{},_trigger,_vipObjectiveTimeoutCancel,_fnc_cancelTimeout] call CBA_fnc_waitUntilAndExecute;
