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

if knockbackTime<StartknockbackTime{
motion_add(knockbackDir,knockbackStr*cos(knockbackTime*pi/(StartknockbackTime*2)))
show_debug_message(string(knockbackStr*cos(knockbackTime*pi/(StartknockbackTime*2))))

show_debug_message(knockbackDir)
show_debug_message(knockbackStr)
show_debug_message(knockbackTime)
knockbackTime++}
//if place_meeting(x+hspeed,y+vspeed,obj_collision){




while(place_meeting(x+hspeed,y,obj_collision)&&abs(round(hspeed))>0){
hspeed-=sign(hspeed)
}


while(place_meeting(x,y+vspeed,obj_collision)&&abs(round(vspeed))>0){
vspeed-=sign(vspeed)
}




var dirOrigin=direction
while(place_meeting(x+hspeed,y+vspeed,obj_collision)&&abs(dirOrigin-direction)<=dirCutoff){
direction--
}
if place_meeting(x+hspeed,y+vspeed,obj_collision){direction=dirOrigin}
while(place_meeting(x+hspeed,y+vspeed,obj_collision)&&abs(dirOrigin-direction)<=dirCutoff){
direction++
}

while(place_meeting(x+hspeed,y+vspeed,obj_collision)&&abs(speed>0)){
speed--
speed=clamp(speed,0,999)
}

if place_meeting(x,y,obj_currency){
var currencyID=instance_place(x,y,obj_currency)
obj_tablet.currency+=currencyID.currency
instance_destroy(currencyID)
}

if place_meeting(x,y,prnt_enemy)&&iframes=0{
var enemyID = instance_place(x,y,prnt_enemy)	
hp-=enemyID.damage

knockbackStr=min(enemyID.damage,80)
knockbackDir=point_direction(enemyID.x,enemyID.y,x,y)
knockbackTime=0
StartknockbackTime=min(enemyID.damage*2,40)
iframes=20
}

if place_meeting(x,y,obj_enemyProjectile)&&iframes=0{
var enemyID = instance_place(x,y,obj_enemyProjectile)	
hp-=enemyID.damage
iframes=20
instance_destroy(obj_enemyProjectile)
}
//show_debug_message(string(dir))
//x+=cos(dir*pi/180)*spd
//x+=sin(dir*pi/180)*spd
if(!point_in_rectangle(x+hspeed,y,0,0,room_width,room_height)){hspeed=0}
if(!point_in_rectangle(x,y+vspeed,0,0,room_width,room_height)){vspeed=0}
if iframes>0 then iframes--
if(hp<=0){room_restart()}
