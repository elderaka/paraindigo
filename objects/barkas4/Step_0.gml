/// @description Grazing
// You can write your code in this editor
timer += 1/room_speed
//speed += (200/room_speed)/room_speed*0.3;
//speed = clamp(speed,0,(200/room_speed)*room_speed*0.3);
//Graze
if instance_exists(o_arkas){
	if o_arkas.useskill == 1{
		segs = segs/2
	}
}
if check == 0{
	check = 1
	alarm[1] = segs
}
if instance_exists(o_MC){
	ex = instance_nearest(x, y, o_MC).x;
	ey = instance_nearest(x, y, o_MC).y;
	if point_distance(x,y,ex,ey) <= 50 && grazed = false{
		grazed = true
		global.graze_ += 1;
		o_stats.weapon_power += 0.04;
		o_stats.sanity_ += 10;
	}
}