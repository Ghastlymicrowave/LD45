
var list = argument0
var pos = argument1
var drop = asset_get_index(string(ds_list_find_value(list,pos)))
instance_create_depth(x,y+64,0,drop)
ds_list_delete(list,pos)