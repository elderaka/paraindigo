/// @description Grazing
// You can write your code in this editor
timer += 1/room_speed
speed = spd/2;
if pattern == 1 && check == 0{
	check = 1;
	image_blend = choose(c_gray)
	path_start(arkaspath1a,speed, path_action_stop, true);
}
if pattern == 2 && check == 0{
	check = 1;
	image_blend = choose(c_gray)
	path_start(arkaspath1b,speed, path_action_stop, true);
}
if pattern == 3 && check == 0{
	check = 1;
	image_blend = c_orange
	path_start(arkaspath1c,speed, path_action_stop, true);
}
if pattern == 4 && check == 0{
	check = 1;
	image_blend = c_orange
	path_start(arkaspath1d,speed, path_action_stop, true);
}
if instance_exists(o_MC){
	if pattern > 2 && path_position == 1{
		speed = spd
		if segs == 0{ //UOHHHHHHH SEGGGGSSSSSSSSSS
			image_blend = c_red;
			segs = 1;
			direction = point_direction(x,y, o_MC.x, o_MC.y)
			image_angle = direction
		}
	}else if pattern < 3 && path_position == 1{
		if segs == 0 {
			segs = 1
			var a = instance_create_layer(x,y,"Bullets",barkas2)
			a.direction = random_range(230,300)
			a.speed = random_range(spd/2,spd*1)
		}
	}
}
if instance_exists(o_MC){
	ex = instance_nearest(x, y, o_MC).x;
	ey = instance_nearest(x, y, o_MC).y;
	if point_distance(x,y,ex,ey) <= 50 && grazed = false{
		grazed = true
		global.graze_ += 1;
		o_stats.weapon_power += 0.04;
		o_stats.sanity_ += 3;
	}
}