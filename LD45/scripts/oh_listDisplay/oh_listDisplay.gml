var list=argument0
var i=0
repeat(ds_list_size(list)){
draw_sprite(oh_spriteQuery(ds_list_find_value(list,i)),0,x,y-32-15*i)
i++
}