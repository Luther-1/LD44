/// @description set up tile variables
image_speed=0;
image_index=irandom(image_number);
warningTimer=0;
moveItemDirection=-1;
nextTile=noone;
tileX=-1;
tileY=-1;
heldResources=array_create(0,0)
isBuilt=false;
canBeBuilt=false;

isPath=false;
isWarning=false;

moveItem=false; //should this tile move items?
isPathable=true; //can this tile be pathed on?
totalRequiredResources=0; //can't be built if 0 resources required
requiredResources=array_create(0,0); //resources required for tile to be built

image_draw=noone; //additional image to draw
tile_draw=noone; //image to draw when tile is built