if held=1{
	if mouse_check_button_released(mb_left){
		
		
		if place_meeting(x,y,obj_slingshot){
			obj_slingshot.damage=0
			for (var i = 0; i<ds_list_size(burgerParts)-1;i++){
			obj_slingshot.damage+=ds_list_find_value(burgerParts,i).type*5+5
			}
			
			ds_list_clear(burgerParts)
		}
		
	held=0	
	}
}