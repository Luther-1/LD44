/// @description pass variables
tile=getTileLocation(x,y);
tile.sprite_index=sprite_index;
tile.isPathable=isPathable;
tile.moveItem=moveItem;
tile.moveItemDirection=moveItemDirection;
tile.image_speed=image_speed;
tile.image_index=image_index;
tile.image_xscale=image_xscale;
tile.image_yscale=image_yscale;
tile.animationStart=animationStart;
tile.animationEnd=animationEnd;
tile.tile_draw=tile_draw;
tile.image_draw=image_draw;
tile.moveItemChild=moveItemChild;
tile.moveItemParent=moveItemParent;
instance_destroy();