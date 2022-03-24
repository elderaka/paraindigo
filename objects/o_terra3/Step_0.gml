	/// @description Insert description here
// You can write your code in this editor
//boss_timer += 1/room_speed;
angle += 1	
x = o_terra.x + lengthdir_x(100,angle)
y = o_terra.y + lengthdir_y(100,angle)

if tembak == true{
		ammo_ -= 1;
		angle_a = (angle_a + 10) mod 360;
		for (var i = 0; i < 4; i++) {
			var g = instance_create_layer(x,y,"Bullets",bterra2b)
			g.direction = 90*i + angle_a
			if indekusu = 0 || indekusu = 2{
				g.image_index = 2
				g.speed = 3
			}else if indekusu = 1 || indekusu = 3{
				g.image_index = 4
				g.speed = 4
			}
			
		}
	alarm[1] = 3;
	tembak = false;
	if ammo_ <= 0{
		ammo_ = 1
		alarm[2] = 6;
	}
} 