#include "component.hpp"

if (missionNamespace getVariable [QGVAR(endingInProgress),false]) exitWith {};
missionNamespace setVariable [QGVAR(endingInProgress),true];

_this spawn {
    params ["_winTitle","_winText","_winningSide"];

    INFO_1("Ending (%1) in progress.",_winText);

    private _displayText = format ["<img size= '6' style='vertical-align:middle' shadow='false' image='data\gruppe-adler.paa'/><br/><t size='.9' color='#FFFFFF'>%1<br/>%2</t>",_winTitle,_winText];

    // show end title
    [_displayText,0,0,4,2] remoteExec ["BIS_fnc_dynamicText",0,false];
    sleep 5;

    // show replay
    [] call GRAD_replay_fnc_stopRecord;
    [_winningSide] remoteExec [QFUNC(endMissionClient),0,false];
};
