///skill();
///@param bullet_type
//o_bullet.damage -> untuk ganti damage bullet// IMPORTANT FOR LATER!!

switch(argument0) {
#region normal
	case "normal":
		o_stats.skill_cost = 1250
		instance_create_layer(x,y, "Bullets", o_skillnormal);
	break;
#endregion

#region temporal
	case "spread":
		o_stats.skill_cost += 1 * 200/power(room_speed,2) //5 detik
		//o_stats.skill_cost = clamp(o_stats.skill_cost,0,((2500-1481.47)/3)/room_speed);
	break;
#endregion temporal

#region gravitas
	case "homing":
		o_stats.skill_cost += 1 * 444.44/power(room_speed,2) // 3 detik
	break;
#endregion gravitas

#region hal
	case "laser":
		o_stats.skill_cost += 1 * 1500/power(room_speed,2) //+- 1 detik
	break;
#endregion hal
}