
tick--
if tick=0{
tick=maxtick
if speed>0{


speed--
	
}
}





if place_meeting(x+hspeed,y,obj_collision){
while !place_meeting(x,y,obj_collision)&&place_meeting(x+hspeed,y,obj_collision){
	hspeed-=sign(hspeed)
}
hspeed=-hspeed*.5
image_angle=direction-90
}

if place_meeting(x,y+vspeed,obj_collision){
while !place_meeting(x,y,obj_collision)&&place_meeting(x,y+vspeed,obj_collision){
	vspeed-=sign(vspeed)
}
vspeed=-vspeed*.5
image_angle=direction-90
}

while (place_meeting(x+hspeed,y+vspeed,obj_collision))&&!place_meeting(x,y,obj_collision)&&speed>0{
	speed--
	
}
if speed<0{speed=0}