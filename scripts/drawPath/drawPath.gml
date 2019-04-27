///@description drawPath(array)
///@param {array} array
var distanceToNextPoint=0;
var dir=0
var cDist=(get_timer()/100000)%26;
var lastX=x;
var lastY=y;
draw_set_colour(c_green);
for(var i=0;i<array_length_1d(argument0);i++)
{
	if(i==0)
		dir=point_direction(x,y,argument0[i].x,argument0[i].y);
	else
	{
		lastX=argument0[i-1].x;
		lastY=argument0[i-1].y;
		dir=point_direction(argument0[i-1].x,argument0[i-1].y,argument0[i].x,argument0[i].y);
	}
	distanceToNextPoint=point_distance(x,y,argument0[i].x,argument0[i].y)
	draw_line_width(lastX,lastY,argument0[i].x,argument0[i].y,4);
	while(distanceToNextPoint>cDist)
	{
		draw_sprite_ext(spr_arrow,0,lerp(lastX,argument0[i].x,cDist/distanceToNextPoint),lerp(lastY,argument0[i].y,cDist/distanceToNextPoint),1,1,dir,c_white,255);
		cDist+=26;
	}
	cDist-=distanceToNextPoint;
}
draw_set_colour(c_white);