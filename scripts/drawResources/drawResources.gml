///@description drawResources(array)
///@param {array} resourcesList
var length=0;
for(var i=0;i<array_length_1d(argument0);i++)
	lengt+=argument0[i];
var size = floor(sqrt(count))
var gap=floor(32/size);
var cProcess=0;
var amount=0;
for(var i =0;i<array_length_1d(argument0);i++)
{
	amount=argument0[i];
	for(var a=0;a<amount;a++)
	{
		draw_sprite_stretched(getSprite(i),0,x-16+gap*(cProcess%size),y-16+gap*(cProcess/size),gap,gap);
		cProcess++;
	}
}