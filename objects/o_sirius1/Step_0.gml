/// @description Insert description here
// You can write your code in this editor
//boss_timer += 1/room_speed;

if instance_exists(o_MC){
	if tembak == true{
		if ammo_ > 0{
			ammo_ -= 1;
			if check == 0{
				check = 1
				posx = o_MC.x
				posy = o_MC.y
			}
			for(var i = 10-(ammo_); i <	11-(ammo_); i++){
				var g = instance_create_depth(posx +90*cos((i*360/10)*(pi/180)) ,posy + 90*sin((i*360/10)*(pi/180)),0,bsirius3);
				g.image_angle = (point_direction(g.x,g.y,posx,posy))
				g.direction = (point_direction(g.x,g.y,posx,posy))
			}
			alarm[1] = 15;
			tembak = false
		} else if ammo_ == 0{
			ammo_ = 10;
			check = 0
			alarm[1] = 210;
			tembak = false
		}
	} 
}