/// @description Grazing
// You can write your code in this editor
timer += 1/room_speed
//speed += (200/room_speed)/room_speed*0.3;
//speed = clamp(speed,0,(200/room_speed)*room_speed*0.3);
speed = 5;
//Graze
if o_arkas.useskill = 1{
	if y > room_height/2 && check == 0{
		direction = 270
		image_index = 1
		image_angle = 270
		speed = speed *2
		check = 1
	}
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