/// @description Insert description here
// You can write your code in this editor
//boss_timer += 1/room_speed;
angle_a += 0.3
if tembak == true{ //GIMANA CARA RUMUS PENDULUM???
				   //OALAH ANJGASJGINASIGASONGOSAGKM MAKE SINWAVE AE DAH
				   //CARA JADI TRIANGULARE WAVE GIMANA ANJGGGGGG
	var a = instance_create_layer(x,y,"Bullets",bterra1)
	a.direction = 330 + (dsin(angle_a * (360 / 90)) * 45) div 1;
	a.image_angle = 330 + (dsin(angle_a * (360 / 90)) * 45) div 1;
	var b = instance_create_layer(x,y,"Bullets",bterra1)
	b.direction = 210 - (dsin(angle_a * (360 / 90)) * 45) div 1;
	b.image_angle = 210 - (dsin(angle_a * (360 / 90)) * 45) div 1;
	if instance_exists(o_terra){
		if o_terra.hp_ < o_terra.max_hp/2{
			var a = instance_create_layer(x,y,"Bullets",bterra1)
			a.direction = 330 - (dsin(angle_a * (360 / 90)) * 45) div 1;
			a.image_index = 1
			a.image_angle = 330 - (dsin(angle_a * (360 / 90)) * 45) div 1;
			var b = instance_create_layer(x,y,"Bullets",bterra1)
			b.direction = 210 + (dsin(angle_a * (360 / 90)) * 45) div 1;
			b.image_index = 1
			b.image_angle = 210 + (dsin(angle_a * (360 / 90)) * 45) div 1;
		}
	}
	alarm[1] = 5;
	tembak = false;
	
} 