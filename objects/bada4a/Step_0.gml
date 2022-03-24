/// @description Grazing
// You can write your code in this editor
timer += 1/room_speed
//speed += (200/room_speed)/room_speed*0.3;
//speed = clamp(speed,0,(200/room_speed)*room_speed*0.3);
//Graze
if instance_exists(o_ada){
	if o_ada.useskill == 0{
		damage_ = 1
		image_alpha = 1
		speed = 3
	}
	if o_ada.useskill == 1{
		damage_ = 0
		image_alpha = 0.4
		speed = 0
	}
}
if instance_exists(o_MC){
	ex = instance_nearest(x, y, o_MC).x;
	ey = instance_nearest(x, y, o_MC).y;
	if point_distance(x,y,ex,ey) <= 50 && grazed = false && o_ada.useskill = 0{
		grazed = true
		global.graze_ += 1;
		o_stats.weapon_power += 0.04;
		o_stats.sanity_ += 10;
	}
}