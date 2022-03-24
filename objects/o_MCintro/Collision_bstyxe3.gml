/// @description Insert description here
// You can write your code in this editor
if can_hurt == true{
	o_stats.hp_ -= 1;
	can_hurt = false;
	image_alpha	= 0.5;
	alarm[1] = 60;
	instance_destroy(other,false);
}