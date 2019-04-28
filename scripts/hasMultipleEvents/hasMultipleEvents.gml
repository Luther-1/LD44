///@description hasMultipleEvents(tile)
///@param {object} tile
if(hasItems(argument0))
	return true;
var count=instance_number(obj_interactable)
for(var i=0;i<count;i++) //carts and such
	if(instance_find(obj_interactable,i).tile==argument0)
		return true;
if(argument0.sprite_index==spr_water) //is water and bridge not built
	return true;
if(argument0.isBuilt || argument0.canBeBuilt) //for building
	return true;
return false;
		