/// @description Insert description here
// You can write your code in this editor
if o_MC.can_hurt == true{
	o_stats.hp_ -= 999;
	o_MC.can_hurt = false;
	o_MC.image_alpha	= 0.5;
	o_MC.alarm[1] = 60;
	instance_destroy();
}