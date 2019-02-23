#include "component.hpp"

params ["_objectiveTrigger","_shotsDetectionRadius"];

private _shotsDetectionTrigger = createTrigger ["EmptyDetector",getPos _objectiveTrigger,false];
_shotsDetectionTrigger setTriggerArea [_shotsDetectionRadius,_shotsDetectionRadius,0,false];
_shotsDetectionTrigger setTriggerActivation ["ANYPLAYER","PRESENT",true];

_shotsDetectionTrigger setTriggerStatements [
    "player in thisList",
    QUOTE([ARR_2(thisTrigger,true)] call FUNC(onCombatDetectionZone)),
    QUOTE([ARR_2(thisTrigger,false)] call FUNC(onCombatDetectionZone))
];

_shotsDetectionTrigger setVariable [QGVAR(parentTrigger),_objectiveTrigger,false];
