changedelay += 1/room_speed

if o_stats.godmode = true && canusegodmode{
	if keyboard_check(ord("E")) && keyboard_check_pressed(ord("N")) && !(instance_exists(o_ada)) && changedelay > 1{
		changedelay = 0
		o_stats.godmode = false
	}
	if instance_exists(o_MC){
	if keyboard_check_pressed(ord(1)){
		o_MC.bullet_type = "normal";
	}
	if keyboard_check_pressed(ord(2)){
		o_MC.bullet_type = "spread";
	}
	if keyboard_check_pressed(ord(3)){
		o_MC.bullet_type = "homing";
	}
	if keyboard_check_pressed(ord(4)){
		o_MC.bullet_type = "laser";
	}
	}
	if keyboard_check_pressed(ord(5)) && o_stats.act < 2{
		if o_stats.unkillable = false{
			o_stats.unkillable = true
		}else if o_stats.unkillable = true{
			o_stats.unkillable = false
			if instance_exists(o_MC){
				o_MC.can_hurt = true
			}
		}
	}
	if keyboard_check_pressed(ord(6)){
		o_stats.weapon_power -= 1;
	}
	if keyboard_check_pressed(ord(7)){
		o_stats.weapon_power += 1;
	}
	if keyboard_check_pressed(ord(0)){
		reset()
	}
	if keyboard_check_pressed(ord(9)){
		reset2()
	}
	//if keyboard_check_pressed(ord(0)){
	//	o_stats.deathcount = 14
	//	o_stats.firsttime2 = false
	//}

}
if o_stats.godmode = false && canusegodmode{
	if keyboard_check(ord("E")) && keyboard_check_pressed(ord("N")) && changedelay > 1 && !(instance_exists(o_ada)){
		o_stats.godmode = true;
		o_stats.usedcheat = true
		changedelay = 0
	}
}