/// @description Insert description here
// You can write your code in this editor
if held=1{
mask_index=sp_nothing
x=obj_player.x+cos((displaceAngle+obj_mainControl.image_angle)*pi/180)*displaceDist
y=obj_player.y-sin((displaceAngle+obj_mainControl.image_angle)*pi/180)*displaceDist
}else{mask_index=sprite4}
if(instance_place(x,y,obj_collision)or instance_place(x,y,obj_player) or instance_place(x,y,prnt_enemyPath)){
	var randDir = irandom_range(1,4)*90
	x+=lengthdir_x(64,randDir)
	y+=lengthdir_y(64,randDir)}
x-=(x)mod(64)
y-=(y)mod(64)