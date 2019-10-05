
var cursorDir= point_direction(0,0,window_mouse_get_x()-xhalf/2,window_mouse_get_y()-yhalf/2)
x = obj_player.x +cos(cursorDir*pi/180)*50 + obj_player.hspeed
y = obj_player.y -sin(cursorDir*pi/180)*50 + obj_player.vspeed
image_angle=cursorDir

if abs(point_distance(window_mouse_get_x()-xhalf/2,window_mouse_get_y()-yhalf/2,0,0))>200{
window_mouse_set(xhalf/2+clamp(cos(cursorDir*pi/180)*200,-200,200),yhalf/2+clamp(-sin(cursorDir*pi/180)*200,-200,200))	
}

for (i=10; i!=-1;i--){
if gatherTimer[i]!=0{
	gatherTimer[i]--
	if gatherTimer[i]=0{
	//get recource i
	}
}
}






if mouse_check_button_pressed(mb_left){
	#region Recource
var inst =instance_place(obj_mainControl.x,obj_mainControl.y,obj_Recource)

if inst>1{
	SetDisplacement(inst)
	if hasThing=0 {//picking up recource
		
		inst.held=1	
		hasThing=1
		recource=inst
	}else if inst.held=1{//dropping recource
	hasThing=0
	with (inst){
				
	var plateID = instance_place(x,y,obj_plate)
	var ovenID = instance_place(x,y,obj_oven)
	if plateID!=noone&&plateID.finished=0{
	
	ds_list_add(plateID.burgerParts,id)
	x=-50
	y=-50
	sprite_index=noone
	}else if ovenID>0{ //placing in oven
	ovenID.timeleft=irandom_range(3,10)*60
	ovenID.inputType=type
	instance_destroy(inst)
	}else if !place_meeting(x,y,obj_worktable){//placing on table
		instance_destroy()	
	}
	held=0
		//	
		}
	}

}else{
	#endregion
	#region Plate
inst=instance_place(obj_mainControl.x,obj_mainControl.y,obj_plate)	

if inst>1&&ds_list_size(inst.burgerParts)>0&&hasThing=0 {//picking up burg
SetDisplacement(inst)

hasThing=1

	displaceDist= point_distance(obj_player.x,obj_player.y,inst.x,inst.y)
	displaceAngle = angle_difference(point_direction(obj_player.x,obj_player.y,inst.x,inst.y),obj_mainControl.image_angle)		



ds_list_copy(heldBurger,inst.burgerParts)
ds_list_clear(inst.burgerParts)
}else if inst>1&&ds_list_size(inst.burgerParts)=0&&hasThing=1&&ds_list_size(heldBurger)>0{//setting down burg
	
			hasThing=0
			ds_list_copy(inst.burgerParts,heldBurger)
			ds_list_clear(heldBurger)
		
		
		
	


}else{
	#endregion
	#region RecourcePile
inst=instance_place(obj_mainControl.x,obj_mainControl.y,prnt_RecourcePile)

if inst>1&&hasThing=0{
hasThing=1
var recourceID =instance_create_depth(obj_mainControl.x,obj_mainControl.y,0,obj_Recource)
SetDisplacement(inst)
recourceID.type=inst.type
recource=inst
	recourceID.held=1

}
}
}
}
#endregion

if mouse_check_button_pressed(mb_right){


if hasThing=1&&ds_list_size(heldBurger)>0{

//launch burger
	
	var projID =instance_create_depth(x,y,-1,obj_burgProjectile)
	projID.speed=30
	projID.direction = image_angle
	projID.image_angle=image_angle-90
	
	for (i=10; i!=-1;i--){
	burgPartsUsed[i]=0
	Fdamge=0
	Podamage=0
	Phdamage=0
	}
	projID.image_xscale= min(ds_list_size(heldBurger)/10+.90,4)
	projID.image_yscale=projID.image_xscale
	for (var i = 0; i<ds_list_size(heldBurger)-1;i++){
			var typeval=burgPartsUsed[ds_list_find_value(heldBurger,i).type]
			if (burgPartsUsed[typeval]>0){//used before
				projID.damage+=((typeval)/(typeval*typeval))*typeval*5+5
				burgPartsUsed[typeval]++
			}else{//first use
				projID.damage+=ds_list_find_value(heldBurger,i).type*5+5
				burgPartsUsed[typeval]++
			}
			
			switch(typeval){
			case 0:Fdamge++
			break;
			case 1:Podamage++
			break;
				
			}
			
			
			
			}
	ds_list_clear(heldBurger)
	hasThing=0
	
}



#region context menu (not used for now)
/*if instance_exists(Prnt_contexItem){instance_destroy(Prnt_contexItem)}

heldRecource=instance_place(obj_mainControl.x,obj_mainControl.y,obj_Recource)
if heldRecource>1{
var contextID = instance_create_depth(obj_mainControl.x,obj_mainControl.y,0,context_mush)
var pos=0
var items=2
contextID.dir = (360)*pos/items

contextID = instance_create_depth(obj_mainControl.x,obj_mainControl.y,0,context_chop)
pos=1

contextID.dir = (360)*pos/items
}*/
}
#endregion

show_debug_message(string(hasThing)+string(ds_list_size(heldBurger)))