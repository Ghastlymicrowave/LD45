
dist+=(maxdist-dist)/10

x=cos(dir*pi/180)*dist+startx
y=sin(dir*pi/180)*dist+starty

if point_distance(startx,starty,obj_mainControl.x,obj_mainControl.y)> maxdist+sprite_width{
instance_destroy()	
}