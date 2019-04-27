///@description createWaterRecurse(direction)
///@param{real} direction
var inst=noone;
for(var i=0;i<360;i+=90)
	if(i==argument0)
		continue;
	else
	{
		inst=instance_position(x+cos(degtorad(i))*Manager.TILE_SIZE,y-sin(degtorad(i))*Manager.TILE_SIZE,obj_water)
		if(inst!=noone)
		{
			moveItemDirection=i;
			moveItemChild=inst;
			inst.moveItemParent=self;
			inst.moveItemDirection=(i+180)%360
			with(inst)
			{
				createWaterRecurse(moveItemDirection);
			}
			return;
		}
	}
	