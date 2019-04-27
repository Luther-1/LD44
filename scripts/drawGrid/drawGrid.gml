///@description drawGrid()
draw_set_colour(c_white);
var tileSize=Manager.TILE_SIZE/2;
for(var i=0;i<horizontalTiles;i++)
	for(var l=0;l<verticalTiles;l++)
		draw_rectangle(-1-tileSize+l*Manager.TILE_SIZE,-1-tileSize+i*Manager.TILE_SIZE,-1+tileSize+l*Manager.TILE_SIZE,-1+tileSize+i*Manager.TILE_SIZE,true)