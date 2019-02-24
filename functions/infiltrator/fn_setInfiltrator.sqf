#include "component.hpp"

params ["_unit"];

if (isNull _unit) exitWith {
    [{!isNull _unit},{[_this] call FUNC(setDigger)},_unit] call CBA_fnc_waitUntilAndExecute;
};

// main node
private _action = [QGVAR(actionMainNode),"Disguise","",{true},{true}] call ace_interact_menu_fnc_createAction;
[_unit,1,["ACE_SelfActions"],_action] call ace_interact_menu_fnc_addActionToObject;

// disguise
private _action = [QGVAR(actionDisguise),"New disguise","",{_this call FUNC(newDisguise)},{true}] call ace_interact_menu_fnc_createAction;
[_unit,1,["ACE_SelfActions",QGVAR(actionMainNode)],_action] call ace_interact_menu_fnc_addActionToObject;

// undisguise
private _fnc_condition = {
    params ["","_unit"];
    _unit getVariable [QGVAR(isDisguised),false];
};
private _action = [QGVAR(actionUndisguise),"Undisguise","",{_this call FUNC(undisguise)},_fnc_condition] call ace_interact_menu_fnc_createAction;
[_unit,1,["ACE_SelfActions",QGVAR(actionMainNode)],_action] call ace_interact_menu_fnc_addActionToObject;

// hide weapon
private _fnc_modifier = {
    params ["","_unit","","_actionData"];

    private _actionDescription = ["Hide weapon","Unhide weapon"] select (_unit getVariable [QGVAR(weaponHidden),false]);
    _actionData set [1,_actionDescription];
};
private _action = [QGVAR(actionHideWeaponToggle),"ERROR: NO NAME","",{_this call FUNC(toggleHideWeapon)},{true},nil,nil,nil,nil,nil,_fnc_modifier] call ace_interact_menu_fnc_createAction;
[_unit,1,["ACE_SelfActions",QGVAR(actionMainNode)],_action] call ace_interact_menu_fnc_addActionToObject;

// hide vest
private _fnc_modifier = {
    params ["","_unit","","_actionData"];

    private _actionDescription = ["Hide vest","Unhide vest"] select (_unit getVariable [QGVAR(vestHidden),false]);
    _actionData set [1,_actionDescription];
};
private _action = [QGVAR(actionHideVestToggle),"ERROR: NO NAME","",{_this call FUNC(toggleHideVest)},{true},nil,nil,nil,nil,nil,_fnc_modifier] call ace_interact_menu_fnc_createAction;
[_unit,1,["ACE_SelfActions",QGVAR(actionMainNode)],_action] call ace_interact_menu_fnc_addActionToObject;
