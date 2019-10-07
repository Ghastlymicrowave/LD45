var list=argument0
var i=0
repeat(ds_list_size(list)){
draw_text(x,y+100+15*i,ds_list_find_value(list,i))
i++
}