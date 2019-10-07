/// @description Insert description here
// You can write your code in this editor
#region input management
var i=0
//Remove Unaccepted Items
repeat(ds_list_size(inputs)){
	switch(ds_list_find_value(inputs,i)){
	case "unaccepted item (object index)":
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
if(refresh>0){refresh--}else if(refresh=0){
//Transfer items to different type
repeat(ds_list_size(inputs)){
switch(ds_list_find_value(inputs,i)){
	case "craftable input (object index)":
	ds_list_add(outputs,"crafting result (object index)")
	ds_list_delete(inputs,i)
	break;
	}
}
i++
//set refresh value to negative
refresh--
}else{}
#endregion
#region output management
while(ds_list_size(outputs)>outCapacity){
oh_drop(outputs,ds_list_size(outputs))
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


}
#endregion
#region RMP Interact
#endregion