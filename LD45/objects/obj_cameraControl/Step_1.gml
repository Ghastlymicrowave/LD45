x= (window_mouse_get_x()-xhalf)+xhalf
y= (window_mouse_get_y()-yhalf)+yhalf
//show_debug_message("a"+string(window_mouse_get_x()/(xhalf))+" "+string(window_mouse_get_y()/(yhalf)))
show_debug_message(string((window_mouse_get_x()-xhalf))+string((window_mouse_get_y()-yhalf)))