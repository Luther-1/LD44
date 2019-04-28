///@description hasItems(tile)
///@param {object} tile
for(var i =0;i<array_length_1d(argument0.heldResources);i++)
	if(argument0.heldResources[i]!=0)
		return true;
return false;