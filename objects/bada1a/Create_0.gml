/// @description Insert description here
// You can write your code in this editor
speed = 250/room_speed;
timer = 0;
check = 0;
grazed = false
if instance_exists(o_MC) {
	image_angle = point_direction(x,y, o_MC.x, o_MC.y)
} else{
	direction = 270;
}