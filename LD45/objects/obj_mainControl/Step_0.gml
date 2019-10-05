for (i=10; i!=-1;i--){
if gatherTimer[i]!=0{
	gatherTimer[i]--
	if gatherTimer[i]=0{
	//get recource i
	}
}
}

if mouse_check_button_pressed(mb_left){
heldRecource=instance_place(mouse_x,mouse_y,obj_Recource)

if heldRecource>1{
	
heldRecource.displaceX=mouse_x-heldRecource.x
heldRecource.displaceY=mouse_y-heldRecource.y
heldRecource.held=1	
}
}
if mouse_check_button_pressed(mb_right){

if instance_exists(Prnt_contexItem){instance_destroy(Prnt_contexItem)}

heldRecource=instance_place(mouse_x,mouse_y,obj_Recource)
if heldRecource>1{
var contextID = instance_create_depth(mouse_x,mouse_y,0,context_mush)
var pos=0
var items=2
contextID.dir = (360)*pos/items

contextID = instance_create_depth(mouse_x,mouse_y,0,context_chop)
pos=1

contextID.dir = (360)*pos/items
}
}
