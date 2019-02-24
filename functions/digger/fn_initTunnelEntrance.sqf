/* executed on server only */

#include "component.hpp"

params ["_builder","_tunnelEntrance"];

_builder setVariable [QGVAR(tunnelsLeft),(_builder getVariable [QGVAR(tunnelsLeft),0]) - 1,true];

if (isNil QGVAR(allTunnelEntrances)) then {GVAR(allTunnelEntrances) = []};
GVAR(allTunnelEntrances) pushBack _tunnelEntrance;
publicVariable QGVAR(allTunnelEntrances);

private _tunnelEntranceName = format ["Exit %1",count GVAR(allTunnelEntrances)];
private _tunnelEntranceID = QGVAR(tunnelEntrance) + "_" + str count GVAR(allTunnelEntrances);

_tunnelEntrance setVariable [QGVAR(tunnelEntranceName),_tunnelEntranceName,true];
[_tunnelEntrance] remoteExec [QFUNC(addTunnelEntranceInteraction),0,_tunnelEntrance];
[_tunnelEntrance,_tunnelEntranceName,_tunnelEntranceID] remoteExec [QFUNC(createMarkerEast),EAST,true];
