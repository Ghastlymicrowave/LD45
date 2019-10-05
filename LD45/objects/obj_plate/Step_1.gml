if held=1{
	if mouse_check_button_pressed(mb_left){
		
		obj_mainControl.hasThing=0
		//if place_meeting(x,y,obj_slingshot){
		//	obj_slingshot.damage=0
		//	for (var i = 0; i<ds_list_size(burgerParts)-1;i++){
		//	obj_slingshot.damage+=ds_list_find_value(burgerParts,i).type*5+5
		//	}
			
		//	ds_list_clear(burgerParts)
		//}
		ds_list_clear(burgerParts)
	held=0	
	}
	
	if mouse_check_button_pressed(mb_right){//launch burger
	held=0
	projID =instance_create_depth(obj_mainControl.x,obj_mainControl.y,-1,obj_burgProjectile)
	projID.speed=30
	projID.direction = obj_mainControl.image_angle
	projID.image_angle=obj_mainControl.image_angle-90
	
	for (i=10; i!=-1;i--){
	burgPartsUsed[i]=0
	Fdamge=0
	Podamage=0
	Phdamage=0
	}
	
	for (var i = 0; i<ds_list_size(burgerParts)-1;i++){
			var typeval=burgPartsUsed[ds_list_find_value(burgerParts,i).type]
			if (burgPartsUsed[typeval]>0){//used before
				projID.damage+=((typeval)/(typeval*typeval))*typeval*5+5
				burgPartsUsed[typeval]++
			}else{//first use
				projID.damage+=ds_list_find_value(burgerParts,i).type*5+5
				burgPartsUsed[typeval]++
			}
			
			switch(typeval){
			case 0:Fdamge++
			break;
			case 1:Podamage++
			break;
				
			}
			
			
			
			}
	ds_list_clear(burgerParts)
	obj_mainControl.hasThing=0
	}
	
}