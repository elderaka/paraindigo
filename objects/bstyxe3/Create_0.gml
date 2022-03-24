/// @description Insert description here
// You can write your code in this editor
speed = 5;
if instance_exists(o_MC) {
	direction = point_direction(x,y, o_MC.x, o_MC.y) + random_range(-10, 10) //randomize biar ngegraze
} else{
	direction = 270;
	speed = 5;
}
grazed = false