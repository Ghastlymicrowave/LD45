if keyboard_check_pressed(vk_space){



if menuOpen=0{
screen_save("screensave.png")
SSave = sprite_add("screensave.png",1,0,0,0,0)	
}

if(!menuOpen){
	
	menuOpen=!menuOpen
	playerX=obj_player.x
	playerY=obj_player.y
	playerAng=obj_mainControl.image_angle
instance_deactivate_all(1)
	instance_create_depth(playerX,playerY,0,obj_collideBox)
darkness=255
lighten=0
}else if lighten=0{
	lighten=1
	
}

}
if(menuOpen=1){
	if(hover){
	cursor_sprite=spr_cursor_neutral}
	}else{
	cursor_sprite=noone}