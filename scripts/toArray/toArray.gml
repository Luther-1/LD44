///@description toArray(<?>... input)
///@param {<?>} input
var arr=array_create(0,0);
var count=0;
for(var i =0;i<argument_count;i++)
	arr[count++]=argument[i];
return arr;