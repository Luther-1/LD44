///@description drawPath(array)
///@param {array} array
var distanceToNextPoint=0;
var dir=0
var cDist=(get_timer()/100000)%26;
var lastX=x;
var lastY=y;
var posX;
var posY;
draw_set_colour(c_green);
for(var i=0;i<array_length_1d(argument0);i++)
{
	if(i==0)
	{
		dir=point_direction(x,y,argument0[i].x,argument0[i].y);
		distanceToNextPoint=point_distance(x,y,argument0[i].x,argument0[i].y)
	}
	else
	{
		lastX=argument0[i-1].x;
		lastY=argument0[i-1].y;
		dir=point_direction(argument0[i-1].x,argument0[i-1].y,argument0[i].x,argument0[i].y);
		distanceToNextPoint=point_distance(argument0[i-1].x,argument0[i-1].y,argument0[i].x,argument0[i].y)
	}
	
	draw_line_width(lastX,lastY,argument0[i].x,argument0[i].y,3);
	draw_circle(argument0[i].x,argument0[i].y,1.5,false);
	while(distanceToNextPoint>cDist)
	{
		posX=lerp(lastX,argument0[i].x,cDist/distanceToNextPoint)
		posY=lerp(lastY,argument0[i].y,cDist/distanceToNextPoint)
		draw_line_width(posX,posY,posX+cos(degtorad(dir-135))*12,posY-sin(degtorad(dir-135))*12,3);
		draw_line_width(posX,posY,posX+cos(degtorad(dir+135))*12,posY-sin(degtorad(dir+135))*12,3);
		cDist+=26;
	}
	cDist-=distanceToNextPoint;
}
draw_set_colour(c_white);