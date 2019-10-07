currency=0
menuOpen=0
darkenSpd=20
darkness=255
lighten=0
scroll=0
smoothScroll=0
maxScroll=0
#region array setup
//x is item ID
//y is item info types
	//0 = name
	//1 = name
	//2 = sprite
	//3 = cost
	//4 = object
//up 1
upgrades[0,0]="Shovel"
upgrades[0,1]="Get Dirt"
upgrades[0,2]=sp_sand
upgrades[0,3]=5
upgrades[0,4]=oh_gen_dirt
//up 2
upgrades[1,0]="Moss"
upgrades[1,1]="Quickly Grows, Low Damage"
upgrades[1,2]=sp_mossball
upgrades[1,3]=10
upgrades[1,4]=oh_gen_moss
//up 1
upgrades[2,0]="Cactus"
upgrades[2,1]="Rule of 5"
upgrades[2,2]=sp_cactus_source
upgrades[2,3]=10
upgrades[2,4]=oh_gen_dirt
//up 2
upgrades[3,0]="Furnace"
upgrades[3,1]="Cook Things"
upgrades[3,2]=sp_furnace
upgrades[3,3]=10
upgrades[3,4]=oh_container_test
//up 2
upgrades[4,0]="Chemical Station"
upgrades[4,1]="Chance of glory, chance of faliure"
upgrades[4,2]=sprite49
upgrades[4,3]=20
upgrades[4,4]=oh_container_test
//up 2
upgrades[5,0]="Bomb Station"
upgrades[5,1]="Garunteed to work 25% of the time"
upgrades[5,2]=sp_factory
upgrades[5,3]=20
upgrades[5,4]=oh_container_test

upgrades[6,0]="Nuclear Vat"
upgrades[6,1]="Slow and Powerful"
upgrades[6,2]=sp_chemicals_nuke
upgrades[6,3]=30
upgrades[6,4]=oh_container_test
#endregion
ini_open("ham.burger")
hover=false
if(!audio_is_playing(burgatory)){
audio_play_sound(burgatory,1,true)
}
if(!audio_is_playing(burgershop)){
audio_play_sound(burgershop,1,true)
}
//ini_read_real()
logMenu=1