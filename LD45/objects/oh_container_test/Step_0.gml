/// @description Insert description here
// You can write your code in this editor
#region input management
var i=0
//Remove Unaccepted Items
repeat(ds_list_size(inputs)){
	switch(ds_list_find_value(inputs,i)){
	case "oh_burger":
	oh_drop(inputs,i)
	refresh=0
	break;
	case "oh_res_chemical_1":
	oh_drop(inputs,i)
	refresh=0
	break;
	case "oh_res_chemical_2":
	oh_drop(inputs,i)
	refresh=0
	break;
	case "oh_res_chemical_3":
	oh_drop(inputs,i)
	refresh=0
	break;
	case "oh_res_chemical_4":
	oh_drop(inputs,i)
	refresh=0
	break;
	case "oh_res_nuke":
	oh_drop(inputs,i)
	refresh=0
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
i=0
repeat(ds_list_size(inputs)){
switch(ds_list_find_value(inputs,i)){
	case "oh_resource_dirt":
	ds_list_add(outputs,"oh_resource_c_dirt")
	ds_list_delete(inputs,i)
	break;
	case "oh_resource_c_dirt":
	ds_list_add(outputs,"oh_resource_c_dirt")
	ds_list_delete(inputs,i)
	break;
	}
i++
}
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
refresh=maxRefresh
}

//take objects out
if(ds_list_size(outputs)>0){
ds_list_add(transferList,ds_list_find_value(outputs,0))
ds_list_delete(outputs,0)
}
}
#endregion
#region RMB Interact
if interacted=2{
interacted=0	
}
#endregion