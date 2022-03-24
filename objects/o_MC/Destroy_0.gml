/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_magicnormal){
	instance_destroy(o_magicnormal);
}
if instance_exists(o_graze){
	instance_destroy(o_graze);
}
if instance_exists(o_sanity){
	instance_destroy(o_sanity);
}
instance_destroy(bullets)

o_stats.lives_ -= 1;
audio_play_sound(ded,1,false)
if o_stats.lives_ > 0 {
	instance_create_layer(room_width/2, room_height + 64, "Instances", o_MCintro);
	instance_create_layer(room_width/2, room_height - 128, "Instances", o_magicnormal);
	instance_create_layer(room_width/2, room_height - 128, "Instances", o_graze);
	instance_create_layer(room_width/2, room_height - 128, "Instances", o_sanity);
	o_stats.hp_ = 3;
}