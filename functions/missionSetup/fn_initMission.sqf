#include "component.hpp"

EGVAR(missionsettings,canTakeEnemyRadios) = ([missionConfigFile >> "cfgMission","canTakeEnemyRadios",0] call BIS_fnc_returnConfigEntry) == 1;
EGVAR(missionsettings,canUseScopes) = ([missionConfigFile >> "cfgMission","canUseScopes",0] call BIS_fnc_returnConfigEntry) == 1;
EGVAR(missionSettings,loadoutFactionBlu) = [missionConfigFile >> "cfgMission", "loadoutFactionBlu",""] call BIS_fnc_returnConfigEntry;
EGVAR(missionSettings,loadoutFactionOpf) = [missionConfigFile >> "cfgMission", "loadoutFactionOpf",""] call BIS_fnc_returnConfigEntry;

[] call EFUNC(missionSetup,intro);
[] call EFUNC(groupsettings,setGroupSettings);

[] call grad_civs_fnc_initModule;

["BLU_F", EGVAR(missionSettings,loadoutFactionBlu)] call GRAD_Loadout_fnc_FactionSetLoadout;
["OPF_F", EGVAR(missionSettings,loadoutFactionOpf)] call GRAD_Loadout_fnc_FactionSetLoadout;


[{!isNull player || isDedicated},{

    if (isServer) then {
        [["PREPARATION_TIME", 0] call BIS_fnc_getParamValue] call FUNC(startPreparationTime);
        [{CBA_missionTime > 10 && {missionNamespace getVariable ["GTV_MISSIONSTARTED",false]}}, {
            [] call grad_replay_fnc_init;
        }, []] call CBA_fnc_waitUntilAndExecute;
    } else {
        [] call grad_replay_fnc_init;
    };

    setViewDistance 3000;
    setObjectViewDistance 2500;

},[]] call CBA_fnc_waitUntilAndExecute;
