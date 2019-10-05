
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

if inst>1&&ds_list_size(inst.burgerParts)>0&&hasThing=0 {
SetDisplacement(inst)
inst.held=1
hasThing=1
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
