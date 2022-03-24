/// @description Grazing
// You can write your code in this editor
timer += 1/room_speed

if timer < 360/150{
	image_index = 2
	direction += 150/room_speed
} else if timer < ((360/150)+(360/90)){
	image_index = 3
	direction += 90/room_speed
} else if timer < ((360/150)+(360/90)+(360/60)){
	image_index = 5
	direction += 60/room_speed
} else {
	instance_destroy();
	a = instance_create_depth(x,y,-200,bsirius2);
	a.image_index = 6;
	a.direction = random_range(0,360)
	a.speed = 5
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