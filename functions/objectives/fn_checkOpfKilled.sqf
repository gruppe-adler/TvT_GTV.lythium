#include "component.hpp"

if (!isServer) exitWith {};

[{
    params ["","_handle"];

    private _unitCount = {
        alive _x &&
        {!(_x getVariable ["ace_isUnconscious",false])}
    } count ((playableUnits select {side _x == EAST}) + EGVAR(infiltrator,allInfiltrators));

    if (_unitCount == 0) exitWith {
        [_handle] call CBA_fnc_removePerFrameHandler;

        private _downSince = 0;
        [{
            params ["_args","_handle"];
            _args params ["_downSince"];

            private _unitCount = {
                alive _x &&
                {!(_x getVariable ["ace_isUnconscious",false])}
            } count ((playableUnits select {side _x == EAST}) + EGVAR(infiltrator,allInfiltrators));

            if (_unitCount > 0) exitWith {
                [_handle] call CBA_fnc_removePerFrameHandler;
                [] call FUNC(checkOpfKilled);
            };

            _args set [0,_downSince + 1];
            if (_downSince > 15) exitWith {
                [_handle] call CBA_fnc_removePerFrameHandler;
                ["BLUFOR WINS!","OPFOR eliminated.",WEST] call EFUNC(endings,endMissionServer);
            };
        },1,[_downSince]] call CBA_fnc_addPerFrameHandler;
    };
},10,[]] call CBA_fnc_addPerFrameHandler;
