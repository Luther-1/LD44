///@description moveItemRecurse()
if(moveItemChild!=noone)
	for(var i =0;i<array_length_1d(heldResources);i++)
		moveItemChild.heldResources[i]=heldResources[i]
if(moveItemParent!=noone)
	with(moveItemParent)
		moveItemRecurse();
else
	heldResources=array_create(Manager.RESOURCE_COUNT);