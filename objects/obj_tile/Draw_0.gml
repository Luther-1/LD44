/// @description draw stuff
if(sprite_index!=-1)
	draw_self();
if(isBuilt)
	draw_sprite(tile_draw,0,x,y)
if(image_draw!=noone)
	draw_sprite(image_draw,0,x,y)
if(moveItemDirection!=-1)
	draw_sprite_ext(spr_arrow,0,x,y,3,3,moveItemDirection,c_white,255);
draw_text(x,y,PATH_VALUE);