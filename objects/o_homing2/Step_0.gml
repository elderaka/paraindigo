/// @description Insert description here
// You can write your code in this editor
image_angle = direction + 270; //YA ALLAH LUPA KALO ARAH SPRITENYA KEKANAN

var dir, accel, ex, ey, enemy, max_speed;

enemy = o_enemy;
accel = .5;
max_speed = 20;

if instance_exists(enemy){
	ex = instance_nearest(x, y, enemy).x;
	ey = instance_nearest(x, y, enemy).y;
	dir = point_direction(x, y, ex, ey);
	motion_add(dir, accel);
	if speed >= max_speed{
		speed = max_speed;
	}
	if distance_to_object(enemy) < 200{
		move_towards_point(ex, ey, speed);
	}
} else {
	direction = 90;
	if speed < max_speed{
		speed += accel;
	}
}