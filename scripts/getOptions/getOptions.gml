///@description getOptions(tile)
///@param {object} tile
//NUMBER THAT COMES BEFORE STRING REPRESENTS ACTION NUMBER!!!
var arr=array_create(0,0);
var count=0;
if(argument0.isPathable)
	arr[count++]="0move";
if(carryingResource==-1)//carrying nothing
{
	if(array_length_1d(argument0.heldResources)>=1 && argument0.heldResources[0]!=0)
		arr[count++]="1pick up log";
	if(array_length_1d(argument0.heldResources)>=2 && argument0.heldResources[1]!=0)
		arr[count++]="2pick up brick";
	if(array_length_1d(argument0.heldResources)>=3 && argument0.heldResources[2]!=0)
		arr[count++]="3pick up iron";
	if(array_length_1d(argument0.heldResources)>=4 && argument0.heldResources[3]!=0)
		arr[count++]="4pick up stone";
}
else if(argument0.isPathable)
	arr[count++]="5drop item";
if(getInteractableObjectOnTile(argument0)!=noone)
	arr[count++]="6interact with object";
if(objectEquip!=noone && getInteractableObjectOnTile(argument0)==objectEquip)
	arr[count++]="7unequip object"
if(argument0.isBuilt)
	arr[count++]="8demolish"
if(argument0.isBuildable)
	arr[count++]="9build"
if(argument0.sprite_index=spr_water && !argument0.pathOverride && carryingResource==1)
	arr[count++]="10build bridge"
return arr;