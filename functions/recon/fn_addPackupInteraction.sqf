#include "component.hpp"

params ["_uav"];

if (_uav getVariable [QGVAR(hasPackupInteraction),false]) exitWith {};

private _fnc_action = {
    params ["_uav","_player"];

    if (typeOf _uav == "O_Static_Designator_02_F") then {
        _player setVariable [QGVAR(remoteDesignatorsLeft),(_player getVariable [QGVAR(remoteDesignatorsLeft),0]) + 1,true];
    };

    if (typeOf _uav == "O_UAV_01_F") then {
        _player setVariable [QGVAR(uavsLeft),(_player getVariable [QGVAR(uavsLeft),0]) + 1,true];
    };

    {_uav deleteVehicleCrew _x} forEach (crew _uav);
    deleteVehicle _uav;
};

private _fnc_condition = {
    params ["","_player"];

    _player getVariable [QGVAR(isRecon),false];
};

private _action = [QGVAR(packupAction),"Pack up","",_fnc_action,_fnc_condition] call ace_interact_menu_fnc_createAction;
[_uav,0,["ACE_MainActions"],_action] call ace_interact_menu_fnc_addActionToObject;

_uav setVariable [QGVAR(hasPackupInteraction),true];
