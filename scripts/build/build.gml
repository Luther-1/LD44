///@description build()
isBuilt=true;
isBuildable=false;
for(var i =0;i<array_length_1d(heldResources);i++) //take away the resources
	heldResources[i]-=requiredResources[i];