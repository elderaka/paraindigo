/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_MC){
	if o_MC.shoot == true {
		if image_alpha < 1 {
			image_alpha += 0.1;
		}
	}
	if o_MC.shoot == false{
		if image_alpha > 0{
			image_alpha -= 0.05;
		}
	}
}
if instance_exists(o_dialogue){
	image_alpha = 0
}