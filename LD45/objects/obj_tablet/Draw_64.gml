if(menuOpen=1){
	

	//draw_sprite(SSave,0,0,0)
	
	if lighten=0{
	darkness-=(darkness-100)/darkenSpd

	}else if lighten=1{
		darkness+=(255-darkness)/darkenSpd*4

		if darkness>250{//comming out of darkness
			lighten=0
			menuOpen=!menuOpen
			instance_activate_all()
			}
		}
	
	draw_sprite_ext(SSave,0,0,0,1,1,0,make_color_hsv(0,0,darkness),1)
	
	#region Menu Draw
	i=0
	#region Scroll
	if(64+array_height_2d(upgrades)*128>window_get_height()){
	maxScroll=128+array_height_2d(upgrades)*128-window_get_height()
	if(mouse_wheel_up()){scroll-=128}
	if(mouse_wheel_down()){scroll+=128}
	scroll=clamp(scroll,0,maxScroll)
	}
	if(scroll!=smoothScroll){
	smoothScroll+=(scroll-smoothScroll)/5
	}
	draw_set_color(c_black)
	draw_rectangle(window_get_width()/2+400,64,window_get_width()/2+420.69,window_get_height()-64,false)
	draw_set_color(c_white)
	draw_rectangle(window_get_width()/2+402,66+scroll/maxScroll*(window_get_height()-132),window_get_width()/2+418.69,window_get_height()-66,false)
	#endregion
	repeat(array_height_2d(upgrades)){
		draw_sprite(upgrades[i,2],0,window_get_width()/2-272,128+i*128-smoothScroll)
		draw_text(window_get_width()/2+64,128+i*128-smoothScroll-32,upgrades[i,0])
		draw_text(window_get_width()/2+64,128+i*128-smoothScroll,upgrades[i,1])
		draw_text(window_get_width()/2+64,128+i*128-smoothScroll+32,"$"+string(upgrades[i,3]))
		#region Mouse Hover
		var boxx1 = window_get_width()/2-400
		var boxx2 = window_get_width()/2+400
		var boxy1 = 128+i*128-smoothScroll+64
		var boxy2 = 128+i*128-smoothScroll-64
		if(point_in_rectangle(mouse_x,mouse_y,boxx1,boxy1,boxx2,boxy2)){hover=true
			draw_rectangle(boxx1,boxy1,boxx2,boxy2,0)}
		#endregion
		#region	Mouse Down
		#endregion
		i++
		}
	#endregion
	
	//draw_sprite_ext(SSave,0,0,0,1,1,0,make_color_hsv(0,0,0),1)
	
}

