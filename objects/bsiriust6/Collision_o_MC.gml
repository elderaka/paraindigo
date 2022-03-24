/// @description damage kepada player
if o_MC.can_hurt == true{
	o_stats.hp_ -= 1;
	o_MC.can_hurt = false;
	o_MC.image_alpha	= 0.5;
	o_MC.alarm[1] = 60;
	instance_destroy();
}