/// @description Grazing
// You can write your code in this editor
if ( x < -10 || x > room_width + 10 ||  y < -50 || y  > room_height){
	alarm[0] = 60
}
if instance_exists(o_ada3) && moving = true{
	direction = point_direction(x,y,o_ada3.x,o_ada3.y) - 20
	image_angle = direction
}
if point_distance(x,y,o_ada3.x,o_ada3.y) <= 160{
	moving = false
}

if instance_exists(o_MC){
	ex = instance_nearest(x, y, o_MC).x;
	ey = instance_nearest(x, y, o_MC).y;
	if point_distance(x,y,ex,ey) <= 50 && grazed == false{
		grazed = true
		global.graze_ += 0.2;
		o_stats.weapon_power += 0.04;
		o_stats.sanity_ += 10;
	}
}