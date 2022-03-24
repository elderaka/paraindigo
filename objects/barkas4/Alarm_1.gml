/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_MC){
	
direction = point_direction(x,y, o_MC.x, o_MC.y)
image_angle = direction	
}
switch(variant){
	case 0 : speed = 10
	break;
	case 1: speed = 10
	break;
	case 2: speed = 20
	break;
	case 3: speed = 5
	break;
	case 4: instance_destroy();
	break
}