
	
	


if held=0&&place_meeting(x,y,obj_conveyor){
	
var conID = instance_place(x,y,obj_conveyor)	

if !place_meeting(x+conID.hspd,y+conID.vspd,obj_collision){
x+=conID.hspd
y+=conID.vspd}
}


