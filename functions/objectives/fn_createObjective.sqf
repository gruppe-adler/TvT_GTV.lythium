#include "component.hpp"

if (!isServer) exitWith {};

params [["_logic",objNull],"_triggerTimeout",["_taskTitle","MISSING TITLE"],["_taskDescription",""],["_taskType",""]];

if (!(_logic isKindOf "LocationArea_F") && {!(_logic isKindOf "Logic")}) exitWith {ERROR_1("%1 is not an area or game logic.",_logic)};

private "_triggerTimeout";
if (isNil "_triggerTimeout") then {
    _triggerTimeout = [missionConfigFile >> "cfgMission","vipObjectiveTimeoutDefault",60] call BIS_fnc_returnConfigEntry;
};
private _shotsDetectionRadius = [missionConfigFile >> "cfgMission","vipObjectiveShotsDetectionRadius",250] call BIS_fnc_returnConfigEntry;
private _vipObjectiveTimeoutCancel = [missionConfigFile >> "cfgMission","vipObjectiveTimeoutCancel",10] call BIS_fnc_returnConfigEntry;

if (isNil QGVAR(objectiveTriggers)) then {GVAR(objectiveTriggers) = []};

{
    [_x,_triggerTimeout,_vipObjectiveTimeoutCancel,_taskTitle,_taskDescription,_taskType] call FUNC(initTrigger);
    [_x] call FUNC(activateTrigger);
    [_x,"hd_objective"] call FUNC(createMarkerEast);
    [_x,_shotsDetectionRadius] call FUNC(createShotsDetection);

    GVAR(objectiveTriggers) pushBack _x;
} foreach (_logic call bis_fnc_moduleTriggers);
