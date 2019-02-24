#include "component.hpp"

params ["_tunnelEntrance"];

// OPFOR INTERACTIONS ==========================================================
private _fnc_condition = {
    params ["","_player"];
    side _player == EAST
};

private _fnc_insertChildren = {
    params ["_target","_player"];

    private _otherEntrances = GVAR(allTunnelEntrances) - [_target];
    private _actions = [];
    {
        private _tunnelEntranceName = _x getVariable [QGVAR(tunnelEntranceName),"ERROR: NO NAME"];
        private _childStatement = {
            params ["","_player","_selectedTunnel"];
            [_player,_selectedTunnel] call FUNC(teleportToTunnel);
        };
        private _action = [QGVAR(tunnelEntranceInteraction) + "_" + str _forEachIndex,format ["to %1",_tunnelEntranceName],"",_childStatement,{true},nil,_x] call ace_interact_menu_fnc_createAction;
        _actions pushBack [_action,[],_target];
    } forEach _otherEntrances;

    _actions
};

private _fnc_modifier = {
        params ["_target","_player","","_actionData"];

        private _otherEntrancesCount = count (GVAR(allTunnelEntrances) - [_target]);
        private _actionDescription = if (_otherEntrancesCount > 0) then {"Tunnel network"} else {"Tunnel network (not connected)"};
        _actionData set [1,_actionDescription];
};

private _action = [QGVAR(tunnelEntranceInteractionMain),"ERROR: NO NAME","",{true},_fnc_condition,_fnc_insertChildren,nil,nil,nil,nil,_fnc_modifier] call ace_interact_menu_fnc_createAction;
[_tunnelEntrance,0,[],_action] call ace_interact_menu_fnc_addActionToObject;

// BLUFOR INTERACTIONS =========================================================
