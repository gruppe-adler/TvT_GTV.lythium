#include "component.hpp"

params [["_trigger",objNull]];

_trigger setTriggerActivation ["WEST","PRESENT",true];
_trigger setTriggerStatements ["gtv_vip in thisList",QUOTE([ARR_2(thisTrigger,thisList)] call FUNC(onTriggerActivated)),QUOTE([ARR_2(thisTrigger,thisList)] call FUNC(onTriggerDeactivated))];
