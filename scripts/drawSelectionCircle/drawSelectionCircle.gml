///@description drawSelectionCircle(x,y)
///@param {real} x
///@param {real} y
selectionTimer++;
if(selectionTimer>40)
{
	selectionTimer=-20;
}
draw_sprite_ext(spr_selection,(get_timer()/100000),argument0,argument1,2,2,0,c_white,255);
if(selectionTimer<=0)
{
	//draw_sprite_ext(spr_warning_circle,0,argument0,argument1,1,1,0,c_aqua,255);
}
else
{
	//draw_sprite_ext(spr_warning_circle,0,argument0,argument1,1,1,sin(selectionTimer*0.03926875)*90,c_aqua,255);
}