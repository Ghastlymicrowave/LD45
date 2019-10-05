dist+=(maxdist-dist)/10

x=cos(dir*pi/180)*dist+startx
y=sin(dir*pi/180)*dist+starty

if point_distance(startx,starty,mouse_x,mouse_y)> maxdist+sprite_width{
instance_destroy()	
}