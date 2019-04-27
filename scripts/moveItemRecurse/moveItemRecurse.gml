///@description moveItemRecurse(tile)
///@param {object} tile
if(moveItemChild!=noone)
	for(var i =0;i<array_length_1d(heldResources);i++)
		moveItemChild.heldResources[i]=heldResources[i]
if(moveItemParent!=noone)
	moveItemRecurse(moveItemParent);
else
	heldResources=array_create(Manager.RESOURCE_COUNT);