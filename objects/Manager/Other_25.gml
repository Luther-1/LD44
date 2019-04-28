/// @description RUN ALL EVENTS
with(obj_tile)
	isObstructed=false;
with(obj_interactable)
	tile.isObstrcuted=tile.isObstructed || isObstruction;
with(obj_worker)
{
	tile =getTileLocation(x,y)
	tile.isObstructed=true;
}
with(all)
	event_user(0);
