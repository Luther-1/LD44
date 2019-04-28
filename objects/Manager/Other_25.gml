/// @description RUN ALL EVENTS
with(obj_tile)
	isObstructed=false;
with(obj_interactable)
	tile.isObstrcuted=tile.isObstructed || isObstruction;
with(obj_worker)
	path=getPath(x,y,goToX,goToY);
with(all)
	event_user(0);
