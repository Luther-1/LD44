/// @description <description>
draw_self();
if(isIdle)
	drawWarning(x,y-16);	
if(carryingResource!=-1)
	draw_sprite(getSprite(carryingResource),0,x,y-16);
if(isSelected)
	drawSelectionCircle(x,y);
if((isSelected || keyboard_check(vk_shift)))
{
	drawPath(path);
	with(Manager)
		drawGrid();
}
if(isSelected && !targetConfirmed)
{
	action=optionBox(goToX,goToY,options);
}