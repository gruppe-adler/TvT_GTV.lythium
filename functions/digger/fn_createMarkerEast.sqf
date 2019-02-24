#include "component.hpp"

params ["_tunnelEntrance","_tunnelEntranceName","_tunnelEntranceID"];

private _markerPos = getPos _tunnelEntrance;
[EAST,_tunnelEntranceID,true,_markerPos,"hd_start","ColorEast",_tunnelEntranceName] remoteExec [QEFUNC(common,createSideMarker),EAST,true];
