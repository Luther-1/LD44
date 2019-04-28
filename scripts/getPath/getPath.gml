///@description getPath(xStart,yStart,xEnd,yEnd)
///@param {real} xStart
///@param {real} yStart
///@param {real} xEnd
///@param {real} yEnd
if(snapToTile(argument0)==snapToTile(argument2) && snapToTile(argument1)==snapToTile(argument3))
	return noone;
if(!getTileLocation(argument2,argument3).isPathable)
	return noone;
with(obj_tile) //reset all tiles
{
	PATH_VALUE=-1;
}

var endTile=getTileLocation(argument0,argument1);
var found=false
var openList=ds_list_create(); //tiles to be checked
var len=0;
var tile=noone;
var testTile=noone;
var cost=0;
ds_list_add(openList,getTileLocation(argument2,argument3)); //add end tile
with(ds_list_find_value(openList,0))
	PATH_VALUE=0
while(ds_list_size(openList)!=0 && !found)
{
	len=ds_list_size(openList);
	cost++;
	while(len!=0)
	{
		tile=ds_list_find_value(openList,0) //get tile
		ds_list_delete(openList,0) //remove tile
		len--;
		if(!tile.isPathable)
			continue;
		if(tile.tileX!=Manager.horizontalTiles-1)
		{
			testTile=getTile(tile.tileX+1,tile.tileY);
			if(testTile.PATH_VALUE==-1 && testTile.isPathable)
			{
				testTile.PATH_VALUE=cost;
				ds_list_add(openList,testTile);
			}
		}
		if(tile.tileX!=0)
		{
			testTile=getTile(tile.tileX-1,tile.tileY);
			if(testTile.PATH_VALUE==-1 && testTile.isPathable)
			{
				testTile.PATH_VALUE=cost;
				ds_list_add(openList,testTile);
			}
		}
		if(tile.tileY!=Manager.verticalTiles-1)
		{
			testTile=getTile(tile.tileX,tile.tileY+1);
			if(testTile.PATH_VALUE==-1 && testTile.isPathable)
			{
				testTile.PATH_VALUE=cost;
				ds_list_add(openList,testTile);
			}
		}
		if(tile.tileY!=0)
		{
			testTile=getTile(tile.tileX,tile.tileY-1);
			if(testTile.PATH_VALUE==-1 && testTile.isPathable)
			{
				testTile.PATH_VALUE=cost;
				ds_list_add(openList,testTile);
			}
		}
		if(endTile.PATH_VALUE!=-1)
		{
			found=true;
			break;	
		}
	}
}
if(!found) //can't reach the tile!
	return noone;
endTile=getTileLocation(argument2,argument3);
tile= getTileLocation(argument0,argument1);
var dir=-1;
var testDirection=-1;
var cPos=0;
var arr=array_create(0,noone);
var testTile=tile;
while(tile!=endTile)
{
	//show_message(string(tile.tileX)+", "+string(tile.tileY)+"|||"+string(endTile.tileX)+", "+string(endTile.tileY))
	dir=testDirection;
	tile=testTile;
	testTile=getTile(clamp(tile.tileX-1,0,Manager.horizontalTiles-1),clamp(tile.tileY,0,Manager.verticalTiles-1))
	if(testTile.PATH_VALUE >=0 && testTile.PATH_VALUE<tile.PATH_VALUE)
	{
		testDirection=180;
		if(dir!=testDirection)
			arr[cPos++]=tile;
		continue;
	}
	testTile=getTile(clamp(tile.tileX+1,0,Manager.horizontalTiles-1),clamp(tile.tileY,0,Manager.verticalTiles-1))
	if(testTile.PATH_VALUE >=0 && testTile.PATH_VALUE<tile.PATH_VALUE)
	{
		testDirection=0;
		if(dir!=testDirection)
			arr[cPos++]=tile;
		continue;
	}
	testTile=getTile(clamp(tile.tileX,0,Manager.horizontalTiles-1),clamp(tile.tileY-1,0,Manager.verticalTiles-1))
	if(testTile.PATH_VALUE >=0 && testTile.PATH_VALUE<tile.PATH_VALUE)
	{
		testDirection=90;
		if(dir!=testDirection)
			arr[cPos++]=tile;
		continue;
	}
	testTile=getTile(clamp(tile.tileX,0,Manager.horizontalTiles-1),clamp(tile.tileY+1,0,Manager.verticalTiles-1))
	if(testTile.PATH_VALUE >=0 && testTile.PATH_VALUE<tile.PATH_VALUE)
	{
		testDirection=270;
		if(dir!=testDirection)
			arr[cPos++]=tile;
		continue;
	}
	
}
arr[cPos++]=tile;
return arr;