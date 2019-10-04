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