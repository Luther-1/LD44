///@description drawWarning(x,y)
///@param {real} x
///@param {real} y
var offset=Manager.TILE_SIZE/2;
warningTimer++;
if(warningTimer>40)
{
	warningTimer=-20;
}
if(warningTimer<=0)
{
	draw_sprite(spr_warning_circle,0,argument0,argument1-offset);
	draw_sprite_ext(spr_warning,0,argument0,argument1-offset,1,1-sin(warningTimer*0.157075)/4,0,c_white,255);
}
else
{
	draw_sprite(spr_warning,0,argument0,argument1-offset);
	draw_sprite_ext(spr_warning_circle,0,argument0,argument1-offset,1,1,sin(warningTimer*0.03926875)*90,c_white,255);
}