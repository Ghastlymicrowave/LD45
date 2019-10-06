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
upgrades[0,0]="Borgar"
upgrades[0,1]="Description Burger"
upgrades[0,2]=MenuBG
upgrades[0,3]=500
upgrades[0,4]=obj_oven
//up 2
upgrades[1,0]=0
upgrades[1,1]=0
upgrades[1,2]=0
upgrades[1,3]=0
upgrades[1,4]=0
#endregion
ini_open("ham.burger")
upgradesTaken=ds_list_create()
cart=ds_list_create()
hover=false
//ini_read_real()