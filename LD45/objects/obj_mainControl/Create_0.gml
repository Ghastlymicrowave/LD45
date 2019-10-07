for (i=10; i!=-1;i--){
gatherTimer[i]=0

}

room_speed=60

xhalf=window_get_width()
yhalf=window_get_height()
viewhalfx=camera_get_view_width(view_camera[0])
viewhalfy=camera_get_view_height(view_camera[0])

window_set_cursor(cr_none)

hasThing=0

recource=0

heldBurger= ds_list_create()
inputs = ds_list_create()

