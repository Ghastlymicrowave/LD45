if held=1{
	
	x=mouse_x-displaceX
	y=mouse_y-displaceY
	if mouse_check_button_released(mb_left){
	
if !place_meeting(x,y,obj_worktable){
instance_destroy()	
}


held=0
}
}

