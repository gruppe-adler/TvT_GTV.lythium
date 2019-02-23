#include "component.hpp"

EGVAR(missionsettings,canTakeEnemyRadios) = ([missionConfigFile >> "cfgMission","canTakeEnemyRadios",0] call BIS_fnc_returnConfigEntry) == 1;
EGVAR(missionsettings,canUseScopes) = ([missionConfigFile >> "cfgMission","canUseScopes",0] call BIS_fnc_returnConfigEntry) == 1;
EGVAR(missionSettings,loadoutFactionBlu) = [missionConfigFile >> "cfgMission", "loadoutFactionBlu",""] call BIS_fnc_returnConfigEntry;
EGVAR(missionSettings,loadoutFactionOpf) = [missionConfigFile >> "cfgMission", "loadoutFactionOpf",""] call BIS_fnc_returnConfigEntry;

[] call EFUNC(groupsettings,setGroupSettings);

[] call grad_civs_fnc_initModule;

["BLU_F", EGVAR(missionSettings,loadoutFactionBlu)] call GRAD_Loadout_fnc_FactionSetLoadout;
["OPF_F", EGVAR(missionSettings,loadoutFactionOpf)] call GRAD_Loadout_fnc_FactionSetLoadout;

if (isServer) then {
    [["PREPARATION_TIME", 0] call BIS_fnc_getParamValue] call FUNC(startPreparationTime);
    [{CBA_missionTime > 10 && {missionNamespace getVariable ["GTV_MISSIONSTARTED",false]}}, {
        [] call grad_replay_fnc_init;
        [] call EFUNC(objectives,checkOpfKilled);
    }, []] call CBA_fnc_waitUntilAndExecute;
} else {
    [] call grad_replay_fnc_init;
};

if (hasInterface) then {
    [{!isNull player},{

        setViewDistance 3000;
        setObjectViewDistance 2500;
        [] call FUNC(intro);

        player addEventHandler ["Killed",{_this call EFUNC(objectives,onPlayerKilled)}];

        if (playerSide == EAST) then {
            player addEventHandler ["Fired",{_this call EFUNC(objectives,onOpforPlayerFired)}];
        };

    },[]] call CBA_fnc_waitUntilAndExecute;
};
