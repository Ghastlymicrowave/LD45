


var cursorDir= point_direction(0,0,window_mouse_get_x()-xhalf/2,window_mouse_get_y()-yhalf/2)
x = obj_player.x +cos(cursorDir*pi/180)*50 + obj_player.hspeed
y = obj_player.y -sin(cursorDir*pi/180)*50 + obj_player.vspeed
image_angle=cursorDir

if(abs(point_distance(window_mouse_get_x()-xhalf/2,window_mouse_get_y()-yhalf/2,0,0))>200&&obj_tablet.menuOpen=0){
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
#region input management
var i=0
//Remove Unaccepted Items
repeat(ds_list_size(inputs)){
	switch(ds_list_find_value(inputs,i)){
	case "unaccepted item (object name)":
	oh_drop(inputs,i)
	break;
	}
	i++
}
//Remove Too Many Items (Worst case scenario)
while(ds_list_size(inputs)>inCapacity){
	oh_drop(inputs,ds_list_size(inputs)-1)
}
#endregion
#region LMB
if(mouse_check_button_pressed(mb_left)){
var ohID = instance_place(x,y,oh_interactable)
var interactableList = ds_list_create()
instance_place_list(x,y,oh_interactable,interactableList,0)
if ds_list_size(interactableList)>0{
	show_debug_message("a")
for(var ii = 0; ii < ds_list_size(interactableList);ii++){//prioritize resources
	var ohID= ds_list_find_value(interactableList,ii)
if(ohID.interactType=1){
ohID.interacted = 1
ohID.actor = object_index
ohID.transferList = inputs
ds_list_delete(interactableList,ii)
show_debug_message("b")
break;
}
}
for(var ii = 0; ii < ds_list_size(interactableList);ii++){//other interactables now
	show_debug_message("c")
	var ohID= ds_list_find_value(interactableList,ii)
if(ohID.interactType!=1){
ohID.interacted = 1
ohID.actor = object_index
ohID.transferList = inputs
break;
}
}
}
}
#endregion
#region RMB

if(mouse_check_button_pressed(mb_right)){
	
	if string_count("oh_burger",string(ds_list_find_value(inputs,0)))=1 {
	var burgProjectile = instance_create_depth(x,y,-5,obj_burgProjectile)
	burgProjectile.speed=30
	burgProjectile.direction = image_angle
	burgProjectile.image_angle=image_angle-90
	burgProjectile.damage= real(string_digits(string(ds_list_find_value(inputs,0)))) 
	ds_list_clear(inputs)
	if string_count("typea",string(ds_list_find_value(inputs,0)))=1{
	burgProjectile.type=1
	}else if string_count("typeb",string(ds_list_find_value(inputs,0)))=1{
	burgProjectile.type=2
	}else if string_count("typec",string(ds_list_find_value(inputs,0)))=1{
	burgProjectile.type=3
	}else{
	burgProjectile.type=0	
	}
	}
	
	else{
	var ohID= instance_place(x,y,oh_interactable)
	if ohID>1{
	ohID.interacted=2	
	}
	}
}


#endregion
#region Old Code
/*
#region LMB

if mouse_check_button_pressed(mb_left){
	#region Recource
var inst =instance_place(obj_mainControl.x,obj_mainControl.y,obj_Recource)

if inst>1{//if it's a recource
	
	if hasThing=0 {//picking up recource
		SetDisplacement(inst)
		inst.held=1	
		hasThing=1
		recource=inst
	}else if inst.held=1{//dropping recource
	
	with (inst){
				
	var plateID = instance_place(x,y,obj_plate)
	var ovenID = instance_place(x,y,obj_oven)
	if plateID!=noone{//placing on burger
	if ds_list_size(plateID.burgerParts)>0||(type=0||type=4||type=5||type=6||type=8){
	ds_list_add(plateID.burgerParts,id)
	obj_mainControl.hasThing=0
	x=-50
	y=-50
	sprite_index=noone}
	}else if ovenID>0{ //placing in oven
		if ovenID.timeleft=0{
	ovenID.timeleft=irandom_range(3,10)*60
	ovenID.maxtimeleft=ovenID.timeleft
	ovenID.inputType=type
	instance_destroy(inst)
	obj_mainControl.hasThing=0
		}
	}else if !place_meeting(x,y,obj_worktable){//placing on table
		instance_destroy()	
		obj_mainControl.hasThing=0
	}else {held=0
		obj_mainControl.hasThing=0}
	
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

/*inst = instance_place(x,y,prnt_machine)//if machine
if inst>1{
	



	
if (hasThing=0){


	
	if hasThing=0 {//picking up recource
		SetDisplacement(inst)
		inst.held=1	
		hasThing=1
		recource=inst
	}else if inst.held=1{
		inst.held=0
	}

}


	




}



}

}
//end of lmb








#endregion
#endregion
#region RMB
if mouse_check_button_pressed(mb_right){

if hasThing=0{

inst = instance_place(x,y,obj_conveyor)

if inst>1{
inst.dir++;
if inst.dir=4 then inst.dir=0

switch(inst.dir){
case 0:
inst.hspd=inst.spd
inst.vspd=0
break;
case 1:
inst.hspd=0
inst.vspd=inst.spd
break;
case 2:
inst.hspd=-inst.spd
inst.vspd=0
break;
case 3:
inst.hspd=0
inst.vspd=-inst.spd
break;
}

}


}else if hasThing=1{

if ds_list_size(heldBurger)>0{

//launch burger
	var spawnx=obj_player.x+cos((displaceAngle+image_angle)*pi/180)*displaceDist
	var spawny=obj_player.y-sin((displaceAngle+image_angle)*pi/180)*displaceDist
	var projID =instance_create_depth(spawnx,spawny,-1,obj_burgProjectile)
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
	for (var i = 0; i<ds_list_size(heldBurger);i++){
			var typeval=burgPartsUsed[ds_list_find_value(heldBurger,i).type]
			if (burgPartsUsed[typeval]>0){//used before
				if typeval>0{
				projID.damage+=((typeval)/(typeval*typeval))*typeval*5+5}
				else{projID.damage+=5}
				burgPartsUsed[typeval]++
			}else{//first use
				projID.damage+=ds_list_find_value(heldBurger,i).type*5+5
				burgPartsUsed[typeval]++
			}
			show_debug_message(projID.damage)
			switch(typeval){
			case 0:Fdamge++
			break;
			case 1:Podamage++
			break;
				
			}
			
			
			
			}
			
			while(ds_list_size(heldBurger!=0)){//fix memory leak refrences
			instance_destroy(ds_list_find_value(heldBurger,0))
			ds_list_delete(heldBurger,0)	
			}
	ds_list_clear(heldBurger)
	hasThing=0
	
}
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
}
}
#endregion
#endregion
*/
#endregion
//show_debug_message(string(hasThing)+string(ds_list_size(heldBurger)))