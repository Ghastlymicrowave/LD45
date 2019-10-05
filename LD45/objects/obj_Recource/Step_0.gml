if held=1{
	
	x=mouse_x-displaceX
	y=mouse_y-displaceY
	if mouse_check_button_released(mb_left){
	
	var plateID = instance_place(x,y,obj_plate)
	if plateID!=noone{
	
	ds_list_add(plateID.burgerParts,id)
	x=-50
	y=-50
	sprite_index=noone
	} else if !place_meeting(x,y,obj_worktable){
instance_destroy()	
}
held=0
}
}

