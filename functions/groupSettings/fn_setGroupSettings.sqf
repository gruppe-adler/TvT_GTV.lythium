/*  Sets group names and radio channels
*
*/

#include "component.hpp"

if (!isServer) exitWith {};

private _allgroups = [] call FUNC(findPlayableGroups);
[_allGroups] call FUNC(setDynamicGroupNames);

INFO("groupsettings: groups registered");
