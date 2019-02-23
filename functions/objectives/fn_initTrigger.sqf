#include "component.hpp"

params ["_trigger","_triggerTimeout","_vipObjectiveTimeoutCancel","_shotsDetectionRadius","_taskTitle","_taskDescription","_taskType"];

_trigger setTriggerActivation ["WEST","PRESENT",true];

_trigger setVariable [QGVAR(vipTriggerTimeout),_triggerTimeout,false];
_trigger setVariable [QGVAR(vipTriggerTimeleft),_triggerTimeout,false];
_trigger setVariable [QGVAR(vipObjectiveTimeoutCancel),_vipObjectiveTimeoutCancel,false];
_trigger setVariable [QGVAR(taskTitle),_taskTitle,false];
_trigger setVariable [QGVAR(taskDescription),_taskDescription,false];
_trigger setVariable [QGVAR(taskType),_taskType,false];

_trigger setVariable [QGVAR(shotsDetectionRadius),_shotsDetectionRadius,true];
