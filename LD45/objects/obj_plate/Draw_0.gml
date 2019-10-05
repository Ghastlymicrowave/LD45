draw_sprite(sprite_index,image_index,startx,starty)//draw plate


if held=1{
var drawx = mouse_x-displaceX
var drawy = mouse_y-displaceY
show_debug_message("FAT")
}else{
drawx=startx
drawy=starty
}

if ds_list_size(burgerParts)>0{
	draw_sprite(returnBurgerSprite(0),0,drawx,drawy)
	
	
//draw sprite for the bun
if ds_list_size(burgerParts)>1{
for (var i = 0; i<ds_list_size(burgerParts)-1;i++){
	
	draw_sprite(returnBurgerSprite(i),0,drawx,drawy-(i+1)/(ds_list_size(burgerParts)+1)*burgHeight-20)
	//draw a sprite based on the burg ingredient
	
}
}
}
