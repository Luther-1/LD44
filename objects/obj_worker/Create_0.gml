/// @description set up
depth=0;
warningTimer=0;
selectionTimer=0;
x=snapToTile(x);
y=snapToTile(y);
tileX=x;
tileY=y;
goToX=tileX;
goToY=tileY;
lastX=x;
lastY=y;
target=noone;
path=noone
carryingResource=-1;
targetConfirmed=true;
eventQueued=false;
isBuilding=false;
isIdle=true;
isSelected=false;
objectEquip=noone;
options=array_create(0,0);
with(getTileLocation(tileX,tileY))
	isObstructed=true;
action=0;//0=move, 1-4 = pick up resource,5=drop , 6=equip, 7=unequp, 8=demolish, 9=build