/// @description Insert description here
// You can write your code in this editor
#region input management
var i=0
//Remove Unaccepted Items
repeat(ds_list_size(inputs)){
	switch(ds_list_find_value(inputs,i)){
	case "oh_burger":
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
#region processing
//by default, timer is NOT reset, you have to do that in interact
if(refresh>0){refresh--; if(refresh=0){
//Transfer items to different type
ds_map_replace(burgIngredients,0,0)
ds_map_replace(burgIngredients,1,0)
ds_map_replace(burgIngredients,2,0)
ds_map_replace(burgIngredients,3,0)
ds_map_replace(burgIngredients,4,0)
ds_map_replace(burgIngredients,5,0)
ds_map_replace(burgIngredients,6,0)
ds_map_replace(burgIngredients,7,0)
ds_map_replace(burgIngredients,8,0)
ds_map_replace(burgIngredients,9,0)
ds_map_replace(burgIngredients,10,0)
ds_map_replace(burgIngredients,11,0)
ds_map_replace(burgIngredients,12,0)

i=0
burgDamage=0
repeat(ds_list_size(inputs)){
switch(ds_list_find_value(inputs,i)){
	case "oh_resource_dirt":
	applyBurgerDamage(5,1)
	break;
	case "oh_resource_c_dirt":
	applyBurgerDamage(6,2)
	break;
	case "oh_res_cactus":
	applyBurgerDamage(8,3)
	break;
	case "oh_res_cactus_cooked":
	applyBurgerDamage(10,4)
	break;
	case "oh_res_moss":
	applyBurgerDamage(3,5)
	break;
	case "oh_res_moss_cooked":
	applyBurgerDamage(13,6)
	break;
	case "oh_res_bomb":
	applyBurgerDamage(40,7)
	break;
	case "oh_res_chemical_1":
	applyBurgerDamage(5,8)
	break;
	case "oh_res_chemical_2":
	applyBurgerDamage(17,9)
	break;
	case "oh_res_chemical_3":
	applyBurgerDamage(19,10)
	break;
	case "oh_res_chemical_4":
	applyBurgerDamage(38,11)
	break;
	case "oh_res_nuke":
	applyBurgerDamage(46,12)
	break;
	}
	show_debug_message(string(burgDamage))
i++
}
ds_list_clear(inputs)
var burgID =instance_create_depth(x,y,-1,oh_burger)
show_debug_message("burg created with damage:"+string(burgDamage))
burgID.burgDamage=burgDamage
}//just set it to 0
}
#endregion
#region output management
while(ds_list_size(outputs)>outCapacity){
oh_drop(outputs,ds_list_size(outputs)-1)
}
#endregion
#region LMB Interact

if(interacted=1){
	
interacted=0
//puts object in
if(ds_list_size(transferList)>0){
ds_list_add(inputs,ds_list_find_value(transferList,0))
ds_list_delete(transferList,0)

}

//take objects out
//for oh_plate, only when player's hand is *empty*, not sure how that'll be done, a bool maybe?
//but this would go here\/
/*if(ds_list_size(inputs)>0){
ds_list_add(transferList,ds_list_find_value(inputs,0))
}*/

}

#endregion
#region RMB Interact
//form a burger

if interacted=2{
	if ds_list_size(inputs)>0{
	refresh=maxRefresh
	}
	interacted=0
}
#endregion