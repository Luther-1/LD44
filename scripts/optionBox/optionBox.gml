///@description optionBoargument0(argument0,y,string... options)
///@param {real} x
///@param {real} y
///@param {string...} options


var length=0;
var height=(array_length_1d(argument2))*25;

for(var i =0;i<array_length_1d(argument2);i++)
	length=max(length,string_width(argument2[i]));
length+=10
if(argument1+height>room_height)
	height=-height;

draw_set_colour(c_aqua)
draw_rectangle(argument0,argument1,argument0+length,argument1+height,false)
draw_set_colour(c_blue)
draw_line_width(argument0,argument1,argument0+length,argument1,3);
draw_line_width(argument0,argument1+height,argument0+length,argument1+height,3);
draw_line_width(argument0,argument1,argument0,argument1+height,3);
draw_line_width(argument0+length,argument1,argument0+length,argument1+height,3);
draw_circle(argument0,argument1,2,false)
draw_circle(argument0+length,argument1,2,false)
draw_circle(argument0,argument1+height,2,false)
draw_circle(argument0+length,argument1+height,2,false)
var move= height>0?0:-25
for(var i =0;i<array_length_1d(argument2);i++)
{
	draw_line_width(argument0,argument1+25*sign(height)*(i+1),argument0+length,argument1+25*sign(height)*(i+1),2)
	draw_text(argument0+5,argument1+25*sign(height)*(i)+move,string_copy(argument2[i],2,string_length(argument2[i])-1))
}
var mn=min(argument1,argument1+height)
var mx=max(argument1,argument1+height)
if(mouse_check_button_pressed(mb_left))
	if(mouse_x>=argument0 && mouse_x<=argument0+length && mouse_y>=mn && mouse_y<=mx)
	{
		if(height>0)
			return real(string_char_at(argument2[floor((mouse_y-mn)/(mx-mn)*array_length_1d(argument2))],1));
		return real(string_char_at(array_length_1d(argument2)-argument2[floor((mouse_y-mn)/(mx-mn)*array_length_1d(argument2))],1));
	}

return -1;