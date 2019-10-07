//arg 0 is damage value
//arg 1 is map key
//arg 2 damage variable
if ds_map_find_value(burgIngredients,argument1)>0{
burgDamage+=argument0*ds_map_find_value(burgIngredients,argument1)/(ds_map_find_value(burgIngredients,argument1)*ds_map_find_value(burgIngredients,argument1))
}else{
	burgDamage+=argument0
}
	ds_map_replace(burgIngredients,0,ds_map_find_value(burgIngredients,argument1)+1)