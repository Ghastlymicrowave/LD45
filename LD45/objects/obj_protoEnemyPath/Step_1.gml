tick--
if tick=0{
tick=irandom_range(maxtick-10,maxtick+10)

mp_potential_step_object(obj_player.x,obj_player.y,60,obj_collision)
//mp_potential_path_object(defaultPath,obj_player.x,obj_player.y,5,3,obj_collision)
//path_start(defaultPath, 5, 0, 0);
}

