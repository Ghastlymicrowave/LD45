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
	
	//draw_sprite_ext(SSave,0,0,0,1,1,0,make_color_hsv(0,0,0),1)
	
}

