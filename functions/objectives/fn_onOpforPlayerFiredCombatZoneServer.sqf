#include "component.hpp"

params ["_objectivesTriggered"];

{
    private _opforShotsFired = _x getVariable [QGVAR(opforShotsFired),0];
    _opforShotsFired = _opforShotsFired + 1;
    _x setVariable [QGVAR(opforShotsFired),_opforShotsFired];

    private _shotsThreshold = [missionConfigFile >> "cfgMission","vipObjectiveShotsAmountForCancel",3] call BIS_fnc_returnConfigEntry;

    if (_opforShotsFired >= _shotsThreshold) then {
        [_x,false] call FUNC(setObjectiveComplete);
    };

} forEach _objectivesTriggered;
