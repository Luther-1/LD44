///@description createWaterRecurse(direction)
///@param{real} direction
var inst=noone;
for(var i=0;i<360;i+=90)
	if(i==argument0)
		continue;
	else
	{
		inst=instance_position(x+cos(degtorad(i))*Manager.TILE_SIZE,y-sin(degtorad(i))*Manager.TILE_SIZE,obj_water);
		if(inst!=noone)
		{
			moveItemDirection=i; // telling flow direction and where it was called from.
			moveItemChild=inst;
			inst.moveItemParent=self;
			inst.moveItemDirection=(i+180)%360;
			if (object_index != obj_water_start)
			{
				var prevDir = 0;
				var prevInst = moveItemParent;
				prevDir = prevInst.moveItemDirection;
				if (i == 0)
				{
					if (prevDir == 0)
					{
						sprite_index = spr_waterH;
					} else if (prevDir == 90) {
						sprite_index = spr_waterQ4;
					} else if (prevDir == 270) {
						sprite_index = spr_waterQ1;
					}
				} else if (i == 90) {
					if (prevDir == 0)
					{
						sprite_index = spr_waterQ2;
					} else if (prevDir == 90) {
						sprite_index = spr_waterV;
					} else if (prevDir == 180) {
						sprite_index = spr_waterQ1;
					}
				} else if (i == 180) {
					if (prevDir == 90)
					{
						sprite_index = spr_waterQ3;
					} else if (prevDir == 180) {
						sprite_index = spr_waterH;
					}  else if (prevDir == 270) {
						sprite_index = spr_waterQ2;
					}
				} else if (i == 270) {
					if (prevDir == 0)
					{
						sprite_index = spr_waterQ3;
					} else if (prevDir  == 180) {
						sprite_index = spr_waterQ4;
					} else if (prevDir == 270) {
						sprite_index = spr_waterV;
					}
				}
			}
			with(inst)
			{
				createWaterRecurse(moveItemDirection);
			}
			return;
		}
	}
moveItemDirection=(i+180)%360;