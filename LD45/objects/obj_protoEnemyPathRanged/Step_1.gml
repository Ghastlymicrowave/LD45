tick--
if tick=0{
tick=irandom_range(maxtick-10,maxtick+10)

mp_potential_step_object(obj_player.x,obj_player.y,40,obj_collision)
//mp_potential_path_object(defaultPath,obj_player.x,obj_player.y,5,3,obj_collision)
//path_start(defaultPath, 5, 0, 0);
}

firetick--
if firetick=0{
firetick=irandom_range(maxfiretick-20,maxfiretick+20)	
var projID = instance_create_depth(realEnemy.x,realEnemy.y,0,obj_enemyProjectile)
projID.speed=25
projID.direction=point_direction(realEnemy.x,realEnemy.y,obj_player.x,obj_player.y)
projID.damage=irandom_range(5,10)
}