
var list = argument0
var pos = argument1


if string_count("oh_burger",string(ds_list_find_value(list,pos)))>=1{
	var burgID=instance_create_depth(x,y,0,oh_burger)
	burgID.burgDamage=real(string_digits(string(ds_list_find_value(list,pos))))
	show_debug_message(string_digits(string(ds_list_find_value(list,pos))))
}else{

var drop = asset_get_index(string(ds_list_find_value(list,pos)))
instance_create_depth(x,y,0,drop)
}
ds_list_delete(list,pos)