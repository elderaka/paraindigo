/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_MC){
	if point_distance(x,y,o_MC.x,o_MC.y) < 10{
		instance_destroy();
	}
}