/// @description <description>
if (mouse_wheel_up())
{
	WantedCsize -=0.25;
}
if (mouse_wheel_down() && camera_size*WantedCsize<room_width && camera_size*WantedCsize<room_height)
{
	WantedCsize +=0.25;
}
if(WantedCsize <1)
	WantedCsize = 1;
if(WantedCsize > 2.75)
	WantedCsize = 2.75;
Csize += (WantedCsize-Csize)/16;
camera_set_view_size(view_camera[0],camera_size*Csize,camera_size*Csize);
if(mouse_check_button(mb_left))
{
	dx=0;
	dy=0;
	x-=(mouse_x - camera_get_view_x(view_camera[0]))-lastX;
	y-=(mouse_y - camera_get_view_y(view_camera[0]))-lastY;
}

if(mouse_check_button_released(mb_left))
{
	dx=-((mouse_x - camera_get_view_x(view_camera[0]))-lastX);
	dy=-((mouse_y - camera_get_view_y(view_camera[0]))-lastY);
}
size=camera_size*Csize/2
x+=dx;
x=clamp(x,size,room_width-size);
y+=dy;
y=clamp(y,size,room_height-size);
dy/=1.05;
dx/=1.05;
if(abs(dx)<0.1)
	dx=0;
if(abs(dy)<0.1)
	dy=0;
lastX=mouse_x - camera_get_view_x(view_camera[0]);
lastY=mouse_y - camera_get_view_y(view_camera[0]);