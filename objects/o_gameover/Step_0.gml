/// @description Insert description here
// You can write your code in this editor
if image_alpha < 1{
	image_alpha += 0.1;
}
if image_alpha == 1{
	
	if keyboard_check_pressed(vk_anykey){
		o_stats.deed = false
		gotoscreen()
	}
}	
