/// @description Insert description here
// You can write your code in this editor
#region processing
//by default, timer is NOT reset, you have to do that in interact
if(refresh>0){refresh--}else if(refresh=0){
//Transfer items to different type
if(ds_list_size(outputs)<outCapacity){
	ds_list_add(outputs,"oh_resource_dirt")
}
//set refresh value to negative
refresh=maxRefresh
}else{}
#endregion
#region output management
while(ds_list_size(outputs)>outCapacity){
oh_drop(outputs,ds_list_size(outputs)-1)
}
if(ds_list_size(outputs)=outCapacity){
refresh=maxRefresh
}
#endregion
#region LMB Interact

if(interacted=1){
	
interacted=0
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