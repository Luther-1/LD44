/// @description set up tile variables
image_speed=0;
image_index=random(5)>4?irandom(image_number):irandom(2);
warningTimer=0;
moveItemDirection=-1;
moveItemParent=noone;
moveItemChild=noone;
nextTile=noone;
tileX=-1;
tileY=-1;
heldResources=array_create(0,0)
heldResources[0]=1;
heldResources[1]=0;
heldResources[2]=0;
heldResources[3]=0;
isBuilt=false;
isBuildable=false;
isObstructed=false;
PATH_VALUE=-1;
animationStart=0;
animationEnd=0;

isPath=false;
isWarning=false;
pathOverride=false; // pathable even if isPathable=false

moveItem=false; //should this tile move items?
isPathable=true; //can this tile be pathed on?
totalRequiredResources=0; //can't be built if 0 resources required
requiredResources=array_create(0,0); //resources required for tile to be built

image_draw=noone; //additional image to draw
tile_draw=noone; //image to draw when tile is built