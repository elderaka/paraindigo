/// @description Insert description here
// You can write your code in this editor
audio_play_sound(hitting,2,false)
with(other){
	hp_ -= other.damage_;
	image_blend = c_red;
	alarm[0] = 3;
}

instance_destroy();