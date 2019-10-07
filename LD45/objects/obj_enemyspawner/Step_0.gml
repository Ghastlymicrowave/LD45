/// @description Insert description here
// You can write your code in this editor

if(t>0){t--}else{
t=(60+random(60))*60
zone=irandom_range(1,4)
switch(zone){
case 1:
repeat(e){instance_create_depth(room_width+random_range(0,200),random(room_height),0,obj_protoEnemyPath)}
break;
case 2:
repeat(e){instance_create_depth(0-random_range(0,200),random(room_height),0,obj_protoEnemyPath)}
break;
case 3:
repeat(e){instance_create_depth(random(room_width),room_height+random_range(0,200),0,obj_protoEnemyPath)}
break;
case 4:
repeat(e){instance_create_depth(random(room_width),0-random_range(0,200),0,obj_protoEnemyPath)}
break;
}
e++
}