/// @description <description>
if(keyboard_check_pressed(vk_escape))
	isSelected=false;
if(mouse_check_button_pressed(mb_left))
{
	if(isSelected && !targetConfirmed)
	{
		action=optionBox(goToX,goToY,options);
		if(action!=-1)
		{
			targetConfirmed=true;
			path=getPath(x,y,goToX,goToY);
		}
	}
	isSelected=point_in_rectangle(mouse_x,mouse_y,bbox_left,bbox_top,bbox_right,bbox_bottom);
}
if(isSelected && mouse_check_button_pressed(mb_right))
{
	goToX=snapToTile(mouse_x);
	goToY=snapToTile(mouse_y);
	target=getTileLocation(goToX/Manager.TILE_SIZE,goToY/Manager.TILE_SIZE)
	targetConfirmed=!hasMultipleEvents(target)
	if(targetConfirmed)
	{
		action=0;//move
		path=getPath(x,y,goToX,goToY);
	}
	else
		options=getOptions(target);
	//path=getPath(x,y,goToX,goToY);
}

isIdle=(path==noone && !isBuilding &&!eventQueued);
//if(!targetConfirmed)