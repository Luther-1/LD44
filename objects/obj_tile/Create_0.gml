/// @description set up tile variables
image_speed=0;
image_index=irandom(image_number);
warningTimer=0;
moveItem=false;
moveItemDirection=0;
isWarning=false;
isPathable=true;
isPath=false;
isBuilt=false;
canBeBuilt=false;
requiredResources=array_create(0,0);
heldResources=array_create(0,0)
image_draw=noone; 