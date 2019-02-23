#include "component.hpp"

params ["_objectivesTriggered"];

{
    [_x,false] call FUNC(setObjectiveComplete);
} forEach _objectivesTriggered;
