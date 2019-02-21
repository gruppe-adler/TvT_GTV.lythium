#include "component.hpp"

params ["_trigger","_triggerTimeout","_vipObjectiveTimeoutCancel"];

_trigger setTriggerActivation ["WEST","PRESENT",true];
_trigger setTriggerStatements ["gtv_vip in thisList",QUOTE([ARR_2(thisTrigger,thisList)] call FUNC(onTriggerActivated)),QUOTE([ARR_2(thisTrigger,thisList)] call FUNC(onTriggerDeactivated))];

_trigger setVariable [QGVAR(vipTriggerTimeout),_triggerTimeout,false];
_trigger setVariable [QGVAR(vipTriggerTimeleft),_triggerTimeout,false];
_trigger setVariable [QGVAR(vipObjectiveTimeoutCancel),_vipObjectiveTimeoutCancel,false];
