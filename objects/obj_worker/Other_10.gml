/// @description <description>
if(!targetConfirmed)
	options=getOptions(target);
if(target!=noone && target.object_index!=obj_tile)
{
	goToX=snapToTile(target.x);
	goToY=snapToTile(target.y);
}
path=getPath(x,y,goToX,goToY);
if(tile.isBuildable && path==noone)//no path and on a buildable tile
	with(tile)
		build();
if(path!=noone)
{
	if(objectEquip==noone)
		tile.isObstructed=false;
	x-=Manager.TILE_SIZE*sign(x-path[0].x);
	y-=Manager.TILE_SIZE*sign(y-path[0].y);
	tile=getTileLocation(x,y)
	tile.isObstructed=true;
	if(array_length_1d(path)==1 && tile==path[0])
		path=noone;
}