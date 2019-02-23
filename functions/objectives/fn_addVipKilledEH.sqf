#include "component.hpp"

params ["_vip"];

_vip addEventHandler ["Killed", {
	params ["_vip"];

    if (!local _vip) exitWith {};
    [{_this call EFUNC(endings,endMissionServer)},["OPFOR WINS!","VIP killed.",EAST],10] remoteExec ["CBA_fnc_waitAndExecute",2,false];
}];
