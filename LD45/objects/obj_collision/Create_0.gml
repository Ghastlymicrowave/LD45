if(instance_place(x,y,obj_collision)or instance_place(x,y,obj_player) or instance_place(x,y,prnt_enemyPath)){
	var randDir = irandom_range(1,4)*90
	x+=lengthdir_x(64,randDir)
	y+=lengthdir_y(64,randDir)}
held=0
x-=(x)mod(64)
y-=(y)mod(64)