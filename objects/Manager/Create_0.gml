/// @description VARIABLES
//THIS CLASS IS MOSTLY STATIC! REFERENCES TO IT SHOULD BE DONE BY OBJECT NOT INSTANCE!!!
//ex: (Manager.TILE_SIZE), not (instance_find(Manager,0).Manager.TILE_SIZE)
global.selectSpecial=false;
depth=-100;
TILE_SIZE=32;
RESOURCE_COUNT=4;

sprites[0]=spr_log;//DECLARE ALL SPRITES HERE
sprites[1]=spr_brick;//DECLARE ALL SPRITES HERE
sprites[2]=spr_iron;//DECLARE ALL SPRITES HERE
sprites[3]=spr_stone;//DECLARE ALL SPRITES HERE
spritesBlueprint[0]=test;

tiles=array_create(room_width/TILE_SIZE,noone) //declare arrays
for(var i =0;i<array_length_1d(tiles);i++)
	tiles[i]=array_create(room_height/TILE_SIZE,noone)
	
horizontalTiles=array_length_1d(tiles)+1;
verticalTiles=array_length_1d(tiles[0])+1;

for(var i=0;i<horizontalTiles;i++) //populate arrays
	for(var l=0;l<verticalTiles;l++)
	{
		tiles[l,i]=instance_create_depth(l*TILE_SIZE,i*TILE_SIZE,50,obj_tile);
		tiles[l,i].tileX=l;
		tiles[l,i].tileY=i;
	}