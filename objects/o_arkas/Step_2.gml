/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_MC) && phase == 2.5{
	x = o_MC.x;
} else {
	move_towards_point(room_width/2, 200, point_distance(x,y,room_width/2,200)/10);
}
if !instance_exists(o_MC) && phase <4{
	instance_destroy(bstyxe1);
	instance_destroy(bstyxe2);
	instance_destroy(bstyxe3);
	instance_destroy(bstyxe4a);
	instance_destroy(bstyxe4b);
}