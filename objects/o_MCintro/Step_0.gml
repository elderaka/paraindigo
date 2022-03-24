if intro == true{
	move_towards_point(room_width/2, room_height - 100, 8);
}
if point_distance(x,y,room_width/2, room_height - 100) < speed{
		speed = 0;
		intro = false
}
if intro == false{
	instance_create_layer(room_width/2, room_height - 128, "Instances", o_magicnormal);
	instance_create_layer(room_width/2, room_height - 128, "Instances", o_graze);
	instance_create_layer(room_width/2, room_height - 128, "Instances", o_sanity);
	instance_create_layer(x,y,"Instances",o_MC)
	instance_destroy();
}