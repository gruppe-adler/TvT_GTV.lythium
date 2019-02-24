#include "component.hpp"

params ["_tunnelEntrance","_builder"];

private _objectives = missionNamespace getVariable [QEGVAR(objectives,objectiveTriggers),[]];
(_objectives findIf {(_tunnelEntrance distance _x) < GVAR(diggerTunnelMinDistToObj)}) < 0
