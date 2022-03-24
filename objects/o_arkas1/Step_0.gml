/// @description Insert description here
// You can write your code in this editor
//boss_timer += 1/room_speed;

if tembak == true{
		ammo_ -= 1;
		var a = instance_create_layer(x,y,"Bullets",barkas1);
		a.spd = 15;
		a.pattern = 1;
		var b = instance_create_layer(x,y,"Bullets",barkas1);
		b.spd = 15;
		b.pattern = 2;
	tembak = false;
	if ammo_ <= 0{
		ammo_ = 1
		alarm[2] = 10;
	}
} 