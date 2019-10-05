


drawx=startx
drawy=starty


if ds_list_size(burgerParts)>0{
	draw_sprite(returnBurgerSprite(0),0,drawx,drawy)
	
	
//draw sprite for the bun
if ds_list_size(burgerParts)>1{
for (var i = 0; i<ds_list_size(burgerParts)-1;i++){
	
	draw_sprite(returnBurgerSprite(i),0,drawx,drawy-(i+1)/(ds_list_size(burgerParts)+1)*burgHeight-10)
	//draw a sprite based on the burg ingredient
	
}
}
}
