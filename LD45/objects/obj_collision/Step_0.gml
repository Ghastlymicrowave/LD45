/// @description Insert description here
// You can write your code in this editor
if(instance_place(x,y,obj_collision)or instance_place(x,y,obj_player) or instance_place(x,y,prnt_enemy)){
	var randDir = irandom_range(1,4)*90
	x+=lengthdir_x(64,randDir)
	y+=lengthdir_y(64,randDir)}