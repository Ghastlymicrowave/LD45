//argument0 = x
//argument1 = y
//argument2 = height
//argument3 = width
//argument4 = val
//argument5 = max
//argument6 = color
var spriteW= argument3/sprite_width
var spriteH= argument2/sprite_width
draw_set_alpha(0.7)
draw_rectangle(argument0-argument3/2,argument1-argument2/2,argument0+argument3/2,argument1+argument2/2,0)
draw_set_alpha(1)
draw_sprite_ext(sp_barGradient,0,argument0-argument3/2,argument1,spriteW*argument4/argument5,spriteH,0,argument6,1)