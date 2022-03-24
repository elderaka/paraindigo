/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_stats){
if instance_exists(o_MC){
	if o_MC.graze == true {
		if image_alpha < 1 {
			image_alpha += 0.1;
		}
	}
	if o_MC.graze == false{
		if image_alpha > 0{
			image_alpha -= 0.1;
		}
	}
}
if instance_exists(o_dialogue){
	image_alpha = 0
}
if global.graze_ mod rec = 0 && added = false && global.graze_ != 0{
	added = true
	o_stats.hp_ += 1
}else if !(global.graze_ mod rec == 0) && !(global.graze_ == 0){
	added = false;
}
}

if global.graze_ != graze_temp{
	audio_play_sound(grazing,1,false)
}
graze_temp = global.graze_