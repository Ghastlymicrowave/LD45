menuOpen=0
darkenSpd=20
darkness=255
lighten=0
scroll=0
smoothScroll=0
#region array setup
//x is item ID
//y is item info types
	//0 = name
	//1 = sprite
	//2 = cost
	//3 = object
upgrades[0,0]=0
upgrades[1,0]=0
upgrades[30,0]=0
#endregion
ini_open("ham.burger")
upgradesTaken=ds_list_create()
cart=ds_list_create()
hover=false
//ini_read_real()