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
target=noone;
path=noone
carryingResource=-1;
targetConfirmed=false;
eventQueued=false;
isBuilding=false;
isIdle=true;
isSelected=false;
action=0;//0=move, 1-5 = pick up resource,6=drop , 7=equip, 8=unequp, 9=demolish, 10=build