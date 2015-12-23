/*
	File: initPlayerLocal.sqf
	
	Description:
	Starts the initialization of the player.
*/
if(!hasInterface) exitWith {}; //This is a headless client, he doesn't need to do anything but keep being headless..
#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
__CONST__(BIS_fnc_endMission,BIS_fnc_endMission);
//[] execVM "SpyGlass\fn_initSpy.sqf"; // disable this piece of <expletive>!
[] execVM "core\init.sqf";

// only add this if a certain player
_uid = getPlayerUID player;
if (_uid == "76561197970197338") then
{
    player addAction ["Teleport", {player execVM "core\actions\fn_teleport.sqf"}];
}
else 
{
    hint format ["Failed!!! %1",getPlayerUID player];
};

//Execute JIP code.
if((_this select 1)) then {
	[] execVM "core\jip.sqf";
};