/// @description Grazing
// You can write your code in this editor
timer += 1/room_speed
//speed += (200/room_speed)/room_speed*0.3;
//speed = clamp(speed,0,(200/room_speed)*room_speed*0.3);
//Graze
timer += 1/room_speed

speed -= (250/room_speed)/room_speed*0.3;
speed = lerp(speed,0,(200/room_speed)/room_speed*0.3);
if instance_exists(o_MC){
	if timer >= 1{
		speed = 4
		if check = 0{
			check = 1;
			image_angle = point_direction(x,y, o_MC.x, o_MC.y)
			direction = (point_direction(x,y,o_MC.x,o_MC.y));
		}
	}
}
if instance_exists(o_ada){
	if o_ada.useskill == 0{
		forward = 0
		damage_ = 0
		image_alpha = 0.4
		speed = 0
	}
	if o_ada.useskill == 1 && forward = 0{
		forward = 1
		damage_ = 1
		image_alpha = 1
		speed = 3
	}
}

if instance_exists(o_MC){
	ex = instance_nearest(x, y, o_MC).x;
	ey = instance_nearest(x, y, o_MC).y;
	if point_distance(x,y,ex,ey) <= 50 && grazed = false && o_ada.useskill = 1{
		grazed = true
		global.graze_ += 1;
		o_stats.weapon_power += 0.04;
		o_stats.sanity_ += 10;
	}
}