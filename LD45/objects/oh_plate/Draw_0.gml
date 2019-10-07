/// @description Insert description here
// You can write your code in this editor
draw_self()
#region test
draw_set_color(c_red)
oh_listDisplay(outputs)
draw_set_color(c_green)
oh_listDisplay(inputs)
draw_set_color(c_white)
#endregion
if refresh>0{
draw_valueBar(x,y-48,15,64,refresh,maxRefresh,make_color_rgb(255,56,50),4)}