/// @description Insert description here
// You can write your code in this editor
//boss_timer += 1/room_speed;
if check = 0{
	direction = 0
	speed = 0.75
	if x > room_width - 100{
		check = 1
	}
}
if check = 1{
	direction = 180
	speed = 0.75
	if x < 100{
		check = 0
	}
}