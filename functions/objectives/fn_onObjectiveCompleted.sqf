#include "component.hpp"

params ["_task","_trigger"];

private _objectiveTasks = GVAR(objectiveTriggers) apply {_x getVariable [QGVAR(taskWest),""]};

// all objectives completed or canceled
if ({!(([_x] call BIS_fnc_taskState) in ["SUCCEEDED","CANCELED"])} count _objectiveTasks == 0) then {

    private _baseTasks = GVAR(bluforBaseTriggers) apply {_x getVariable [QGVAR(taskWest),""]};

    // base task completed
    if ({([_x] call BIS_fnc_taskState) == "SUCCEEDED"} count _baseTasks > 0) then {
        ["BLUFOR WINS!","VIP completed route.",WEST] call EFUNC(endings,endMissionServer);

    // create base task
    } else {
        {[_x] call FUNC(activateTrigger)} forEach GVAR(bluforBaseTriggers);
    };
};
