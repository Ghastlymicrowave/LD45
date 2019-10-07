
draw_self()

draw_sprite_ext(spr_point,0,x,y,1,1,point_direction(0,0,window_mouse_get_x()-xhalf/2,window_mouse_get_y()-yhalf/2),c_white,0.5)

if hasThing=0{
	
inst = instance_place(x,y,obj_Recource)
if inst<1{
	inst = instance_place(x,y,prnt_RecourcePile)
}
if inst>1{
	var drawString=""
	switch(inst.type){
		case 0: drawString="Dirt";break;
		case 1: drawString="Cactus";break;
		case 2: drawString="Cooked Dirt";break;
		case 3: drawString="Cooked Cactus";break;
		case 4: drawString="Overcooked";break;
		case 5: drawString="Charred Garbage";break;
	}
	
	//draw_text_ext(inst.x,inst.y-20,drawString,1,400)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text_ext(inst.x,inst.y-inst.sprite_height/2-20,drawString,1,400)
}

}

if (hasThing=1&&ds_list_size(heldBurger)>0){
var drawx=obj_player.x+cos((displaceAngle+image_angle)*pi/180)*displaceDist
var drawy=obj_player.y-sin((displaceAngle+image_angle)*pi/180)*displaceDist
draw_sprite_ext(spr_burg,0,drawx,drawy,1,1,image_angle-90,c_white,1)
}

oh_listDisplay(inputs)

