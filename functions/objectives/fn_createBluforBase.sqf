#include "component.hpp"

if (!isServer) exitWith {};

params [["_logic",objNull],["_taskTitle","Return to Base"],["_taskDescription","Return the VIP safely to base."],["_taskType","defend"]];

if (!(_logic isKindOf "LocationArea_F") && {!(_logic isKindOf "Logic")}) exitWith {ERROR_1("%1 is not an area or game logic.",_logic)};

private _triggerTimeout = [missionConfigFile >> "cfgMission","vipBaseTaskTimeout",60] call BIS_fnc_returnConfigEntry;
private _vipObjectiveTimeoutCancel = [missionConfigFile >> "cfgMission","vipObjectiveTimeoutCancel",10] call BIS_fnc_returnConfigEntry;

if (isNil QGVAR(bluforBaseTriggers)) then {GVAR(bluforBaseTriggers) = []};

{
    GVAR(bluforBaseTriggers) pushBack _x;

    [_x,_triggerTimeout,_vipObjectiveTimeoutCancel,_taskTitle,_taskDescription,_taskType] call FUNC(initTrigger);
    [_x,"hd_flag"] call FUNC(createMarkerEast);

} foreach (_logic call bis_fnc_moduleTriggers);
