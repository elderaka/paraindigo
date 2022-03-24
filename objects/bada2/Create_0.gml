/// @description Speed awal dan juga arah awal
speed = 5;
grazed = false
if instance_exists(o_MC) {
	direction = point_direction(x,y, o_MC.x, o_MC.y) //randomize biar ngegraze
} else{
	direction = 270;
	speed = 5;
}