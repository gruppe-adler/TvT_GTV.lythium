#include "component.hpp"

params [["_winningSide",sideUnknown]];

waitUntil {missionNamespace getVariable ["REPLAY_FINISHED",false]};
["end1",playerSide isEqualTo _winningSide,true,true,true] spawn BIS_fnc_endMission;
