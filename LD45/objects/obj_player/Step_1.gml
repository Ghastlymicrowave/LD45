if keyboard_check(vk_shift){
maxspd=10	
}else maxspd=6

var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var vinput = keyboard_check(ord("S")) - keyboard_check(ord("W"))

if (abs(hinput)||abs(vinput)){
var newdir= point_direction(0,0,hinput,vinput)
//show_debug_message(newdir)
if lastinputs=0{dir -= angle_difference(dir,newdir)}else{
dir -= angle_difference(dir,newdir)/5}
spd += (maxspd-spd)/4} else{ spd-=spd/4}
lastinputs= (abs(hinput)||abs(vinput))

if spd>maxspd then spd=maxspd

direction=dir
speed=spd

while (place_meeting(x+hspeed,y+vspeed,obj_collision))&&!place_meeting(x,y,obj_collision)&&speed>0{
	speed--
}

if place_meeting(x+hspeed,y,obj_collision){
while !place_meeting(x,y,obj_collision)&&place_meeting(x+hspeed,y,obj_collision){
	hspeed-=sign(hspeed)
}

}

if place_meeting(x,y+vspeed,obj_collision){
while !place_meeting(x,y,obj_collision)&&place_meeting(x,y+vspeed,obj_collision){
	vspeed-=sign(vspeed)
}
}

while (place_meeting(x+hspeed,y+vspeed,obj_collision))&&!place_meeting(x,y,obj_collision)&&speed>0{
	speed--
}




//show_debug_message(string(dir))
//x+=cos(dir*pi/180)*spd
//x+=sin(dir*pi/180)*spd