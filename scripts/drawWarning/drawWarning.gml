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
	draw_sprite_ext(spr_warning_circle,0,argument0,argument1-offset,0.5,0.5,0,c_white,255);
	draw_sprite_ext(spr_warning,0,argument0,argument1-offset,0.5,0.5-sin(warningTimer*0.157075)/8,0,c_white,255);
}
else
{
	draw_sprite_ext(spr_warning,0,argument0,argument1-offset,0.5,0.5,0,c_white,255);
	draw_sprite_ext(spr_warning_circle,0,argument0,argument1-offset,0.5,0.5,sin(warningTimer*0.03926875)*90,c_white,255);
}