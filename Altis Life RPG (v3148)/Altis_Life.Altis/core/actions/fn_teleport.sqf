/*
	File: fn_teleport.sqf
	
	Description:
	Teleport to the location on the map the player clicks on.
    The player must click on the map, then hit the ESC key to exit the map. 
    They will then be teleported to the location.
*/
titleText["Open up the map and select the teleport location!", "PLAIN"];
onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";