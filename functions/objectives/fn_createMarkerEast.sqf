#include "component.hpp"

params ["_trigger","_markerType"];

private _markerID = QGVAR(markerEast) + "_" + str count GVAR(objectiveTriggers);
private _markerPos = getPos _trigger;

[EAST,_markerID,true,_markerPos,_markerType,"ColorWEST"] remoteExec [QEFUNC(common,createSideMarker),EAST,true];
