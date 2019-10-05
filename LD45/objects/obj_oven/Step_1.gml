
if timeleft>0{

timeleft--
if timeleft=0{
recID = instance_create_depth(x,y,0,obj_Recource)
switch(inputType){
	case 0: recID.type=2
	break;
	case 1: recID.type=3
	break;
	case 2: recID.type=4
	break;
	case 3: recID.type=4
	break;
	case 4: recID.type=5
}
}
	
}