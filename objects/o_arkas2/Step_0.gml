/// @description Insert description here
// You can write your code in this editor
//boss_timer += 1/room_speed;
if pattern = 1 && check = 0{
	check = 1
	path_start(arkaspath2b,3,path_action_reverse,true)
}
if pattern = 2 && check = 0{
	check = 1
	path_start(arkaspath2f,3,path_action_reverse,true)
}
if o_arkas.useskill = 1{
	frequent = 60
}
if tembak == true{
	if ammo_ > 0{
		ammo_ -=1
		angle += 1;
		for(var i = 0; i < 12; i++){
			var g = instance_create_depth(x,y,0,barkas3);		
			g.direction = i*360/12 + angle*10;
			//FUCKING GOLDEN RATIO YESSSSSSSSS
			alarm[1] = 10;
			tembak = false;
		}
	}
	if ammo_ == 0{
			alarm[2] = frequent;		
			tembak = false;
	}		
} 