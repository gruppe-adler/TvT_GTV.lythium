#include "component.hpp"

params ["_unit"];

if (isNull _unit) exitWith {
    [{!isNull _unit},{[_unit] call FUNC(addInteractions)},_unit] call CBA_fnc_waitUntilAndExecute;
};

if (!local _unit) exitWith {};

private _fnc_condition = {
    params ["","_player"];
    (_player getVariable [QGVAR(tunnelsLeft),0]) > 0
};

private _fnc_modifier = {

    params ["","_player","","_actionData"];
    private _tunnelsLeft = _player getVariable [QGVAR(tunnelsLeft),0];
    _actionData set [1, format ["Dig tunnel (%1 left)", _tunnelsLeft]];
};

private _action = [QGVAR(digInteractionMain),"ERROR: NO ACTION NAME","",{_this call FUNC(startPlacement)},_fnc_condition,{},[],nil,nil,nil,_fnc_modifier] call ace_interact_menu_fnc_createAction;
[_unit,1,["ACE_SelfActions"],_action] call ace_interact_menu_fnc_addActionToObject;


private _diggerTunnels = [missionConfigFile >> "cfgMission","diggerTunnelAmount",3] call BIS_fnc_returnConfigEntry;
_unit setVariable [QGVAR(tunnelsLeft),_addTunnels,true];
