///@description getPath(xStart,yStart,xEnd,yEnd)
///@param {real} xStart
///@param {real} yStart
///@param {real} xEnd
///@param {real} yEnd
if(snapToTile(argument0)==snapToTile(argument2) && snapToTile(argument1)==snapToTile(argument3))
	return noone;
if(!getTileLocation(argument2,argument3).isPathable)
	return noone;
var arr;
arr[0]=getTileLocation(snapToTile(argument2),snapToTile(argument3))
return arr;