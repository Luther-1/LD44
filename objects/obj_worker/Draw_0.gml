/// @description <description>
draw_self();
if(isIdle)
	drawWarning(x,y-16);	
if(carryingResource!=-1)
	draw_sprite(carryingResource,0,x,y-16);
if(isSelected)
	drawSelectionCircle(x,y);
if((isSelected || keyboard_check(vk_shift)))
{
	drawPath(path);
	with(Manager)
		drawGrid();
}
draw_set_color(c_orange);
draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);