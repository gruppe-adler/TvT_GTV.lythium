#include "component.hpp"

params ["_unit"];

if (isNull _unit) exitWith {
    [{!isNull _unit},{[_this] call FUNC(setRecon)},_unit] call CBA_fnc_waitUntilAndExecute;
};

private _fnc_condition = {
    params ["","_unit"];
    (_unit getVariable [QGVAR(remoteDesignatorsLeft),0]) > 0
};

private _action = [QGVAR(placeRemoteDesignatorAction),"Place remote designator","",{["O_Static_Designator_02_F","NORMAL"] call grad_fortifications_fnc_startPlacement},_fnc_condition] call ace_interact_menu_fnc_createAction;
[_unit,1,["ACE_SelfActions"],_action] call ace_interact_menu_fnc_addActionToObject;

private _fnc_condition = {
    params ["","_unit"];
    (_unit getVariable [QGVAR(uavsLeft),0]) > 0
};

private _action = [QGVAR(placeUAVAction),"Place UAV","",{["O_UAV_01_F","NORMAL"] call grad_fortifications_fnc_startPlacement},_fnc_condition] call ace_interact_menu_fnc_createAction;
[_unit,1,["ACE_SelfActions"],_action] call ace_interact_menu_fnc_addActionToObject;

if (isServer) then {
    _unit setVariable [QGVAR(remoteDesignatorsLeft),1,true];
    _unit setVariable [QGVAR(uavsLeft),1,true];
    _unit setVariable [QGVAR(isRecon),true,true];
};
