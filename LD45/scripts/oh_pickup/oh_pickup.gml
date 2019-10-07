var actor = argument0
show_debug_message(string(object_get_name(object_index)))
if string_count("oh_burger",string(object_get_name(object_index)))>=1{
	show_debug_message("faee")
	ds_list_add(actor.inputs,string(object_get_name(object_index))+string(burgDamage))
	show_debug_message(string(object_get_name(object_index))+string(burgDamage))
}else{
ds_list_add(actor.inputs,object_get_name(object_index))}
instance_destroy()