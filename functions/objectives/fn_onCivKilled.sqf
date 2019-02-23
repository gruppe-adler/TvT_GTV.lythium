#include "component.hpp"


params ["_civ","_killer"];

systemChat "civ killed";

if (!local _civ) exitWith {};

private _dmgSide = side (group _killer);

if (_dmgSide == WEST) then {
    GVAR(civsKilledBlu) = (missionNamespace getVariable [QGVAR(civsKilledBlu),0]) + 1;
    if (isNil QGVAR(civsKilledThreshold)) then {GVAR(civsKilledThreshold) = [missionConfigFile >> "cfgMission","civsKilledThreshold",3] call BIS_fnc_returnConfigEntry};

    if (GVAR(civsKilledBlu) >= GVAR(civsKilledThreshold)) then {
        [{_this call EFUNC(endings,endMissionServer)},["OPFOR WINS!","BLUFOR caused civilian casualties.",EAST],10] remoteExec ["CBA_fnc_waitAndExecute",2,false];
    };
};
