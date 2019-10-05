


if held=1{

var drawx=obj_player.x+cos((displaceAngle+obj_mainControl.image_angle)*pi/180)*displaceDist
var drawy=obj_player.y-sin((displaceAngle+obj_mainControl.image_angle)*pi/180)*displaceDist
draw_sprite_ext(spr_burg,0,drawx,drawy,1,1,obj_mainControl.image_angle-90,c_white,1)
}else{
drawx=startx
drawy=starty


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
}