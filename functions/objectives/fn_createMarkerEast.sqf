#include "component.hpp"

params ["_trigger"];

private _markerID = QGVAR(markerEast) + "_" + str count GVAR(objectiveTriggers);
private _markerPos = getPos _trigger;

[EAST,_markerID,true,_markerPos,"hd_objective","ColorWEST"] remoteExec [QEFUNC(common,createSideMarker),EAST,true];
