/// @description <description>
tile =getTileLocation(x,y)
if(tile.isBuildable && path==noone)//no path and on a buildable tile
	with(tile)
		build();