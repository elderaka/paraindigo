///bullet();
///@param bullet_type
//o_bullet.damage -> untuk ganti damage bullet// IMPORTANT FOR LATER!!

switch(argument0) {
#region normal
	case "normal":
	o_stats.firerate = 10;
	if o_stats.weapon_power <= 1 {
		instance_create_layer(x,y-85, "Bullets", o_bullet);
	}
	if o_stats.weapon_power >= 1 && o_stats.weapon_power <= 2{
		o_stats.firerate = 8;
		instance_create_layer(x-8,y-85, "Bullets", o_bullet);
		instance_create_layer(x+8,y-85, "Bullets", o_bullet);
	}
	if o_stats.weapon_power >= 2 && o_stats.weapon_power <= 3{
		o_stats.firerate = 6;
		instance_create_layer(x+16,y-85, "Bullets", o_bullet);
		instance_create_layer(x,y-85, "Bullets", o_bullet);
		instance_create_layer(x-16,y-85, "Bullets", o_bullet);
	}
	if o_stats.weapon_power >= 3 && o_stats.weapon_power <= 4{
		o_stats.firerate = 4;
		instance_create_layer(x-24,y-85, "Bullets", o_bullet);
		instance_create_layer(x-8,y-85, "Bullets", o_bullet);
		instance_create_layer(x+8,y-85, "Bullets", o_bullet);
		instance_create_layer(x+24,y-85, "Bullets", o_bullet);
	}
	if o_stats.weapon_power >= 4{
		o_stats.firerate = 4;
		instance_create_layer(x+32,y-85, "Bullets", o_bullet);
		instance_create_layer(x+16,y-85, "Bullets", o_bullet);
		instance_create_layer(x,y-85, "Bullets", o_bullet);
		instance_create_layer(x-16,y-85, "Bullets", o_bullet);
		instance_create_layer(x-32,y-85, "Bullets", o_bullet);
	}
	break;

#endregion
#region temporal
	case "spread":
	o_stats.firerate = 10;
	if  o_stats.weapon_power >= 0{
		var a, b, c
		a = instance_create_layer(x+16,y, "Bullets", o_spread);
		b = instance_create_layer(x,y, "Bullets", o_spread);
		c = instance_create_layer(x-16,y, "Bullets", o_spread);
		a.direction = 85;
		b.direction = 90;
		c.direction = 95;
	}
	if o_stats.weapon_power >= 1 && o_stats.weapon_power <= 2{
		o_stats.firerate = 8;
		var a, b, c
		a = instance_create_layer(x+16,y, "Bullets", o_spread);
		b = instance_create_layer(x,y, "Bullets", o_spread);
		c = instance_create_layer(x-16,y, "Bullets", o_spread);
		a.direction = 85;
		b.direction = 90;
		c.direction = 95;
	}
	if  o_stats.weapon_power >= 2 && o_stats.weapon_power <= 3 {
		var a, b, c, d
		o_stats.firerate = 6;
		a = instance_create_layer(x+24,y, "Bullets", o_spread);
		b = instance_create_layer(x+8,y, "Bullets", o_spread);
		c = instance_create_layer(x-8,y, "Bullets", o_spread);
		d = instance_create_layer(x-24,y, "Bullets", o_spread);
		a.direction = 82.5;
		b.direction = 87.5;
		c.direction = 92.5;
		d.direction = 97.5;
	}
	if  o_stats.weapon_power >= 3 && o_stats.weapon_power <= 4 {
		var a, b, c, d, e
		o_stats.firerate = 4;
		a = instance_create_layer(x+32,y, "Bullets", o_spread);
		b = instance_create_layer(x+16,y, "Bullets", o_spread);
		c = instance_create_layer(x,y, "Bullets", o_spread);
		d = instance_create_layer(x-16,y, "Bullets", o_spread);
		e = instance_create_layer(x-32,y, "Bullets", o_spread);
		a.direction = 80;
		b.direction = 85;
		c.direction = 90;
		d.direction = 95;
		e.direction = 100;
	}
	if o_stats.weapon_power >= 400 {
		var a, b, c, d, e, f
		o_stats.firerate = 4;
		a = instance_create_layer(x+40,y, "Bullets", o_spread);
		b = instance_create_layer(x+24,y, "Bullets", o_spread);
		c = instance_create_layer(x+8,y, "Bullets", o_spread);
		d = instance_create_layer(x-8,y, "Bullets", o_spread);
		e =	instance_create_layer(x-24,y, "Bullets", o_spread);
		f = instance_create_layer(x-40,y, "Bullets", o_spread);
		a.direction = 77.5;
		b.direction = 82.5;
		c.direction = 87.5;
		d.direction = 92.5;
		e.direction = 97.5;
		f.direction = 102.5;
	}
	break;
#endregion temporal
#region gravitas
	case "homing":
	o_stats.firerate = 25;
	if o_stats.weapon_power == 0 {
		instance_create_layer(x,y - 48, "Bullets", o_homing);
	}
	if o_stats.weapon_power == 1 {
		instance_create_layer(x - 16,y - 48, "Bullets", o_homing);
		instance_create_layer(x,y - 48, "Bullets", o_homing);
		instance_create_layer(x + 16,y - 48, "Bullets", o_homing);
	}if o_stats.weapon_power == 2 {
		o_stats.firerate = 10;
		instance_create_layer(x - 16,y - 48, "Bullets", o_homing);
		instance_create_layer(x,y - 48, "Bullets", o_homing);
		instance_create_layer(x + 16,y - 48, "Bullets", o_homing);
	}if o_stats.weapon_power == 3 {
		o_stats.firerate = 10;
		instance_create_layer(x - 16,y - 48, "Bullets", o_homing);
		instance_create_layer(x,y - 48, "Bullets", o_homing);
		instance_create_layer(x + 16,y - 48, "Bullets", o_homing);
		instance_create_layer(x - 32,y - 48, "Bullets", o_homing2);
		instance_create_layer(x + 32,y - 48, "Bullets", o_homing2);
	}if o_stats.weapon_power >= 4 {
		o_stats.firerate = 7.5;
		instance_create_layer(x - 16,y - 48, "Bullets", o_homing);
		instance_create_layer(x,y - 48, "Bullets", o_homing);
		instance_create_layer(x + 16,y - 48, "Bullets", o_homing);
		instance_create_layer(x - 32,y - 48, "Bullets", o_homing2);
		instance_create_layer(x + 32,y - 48, "Bullets", o_homing2);
		instance_create_layer(x - 48,y - 16, "Bullets", o_homing2);
		instance_create_layer(x + 48,y - 16, "Bullets", o_homing2);
	}
	break;
#endregion gravitas
#region hal
	case "laser":
	o_stats.firerate = 1;
	if o_stats.weapon_power == 0 {
		var a;
		a = instance_create_layer(x,y - 296, "Bullets", o_laser);
	}
	if o_stats.weapon_power == 1 {
		instance_create_layer(x,y - 296, "Bullets", o_laser);
		o_laser.image_xscale = 3;
	}
	if o_stats.weapon_power == 2 {
		var a, b;
		a = instance_create_layer(x - 32,y - 296, "Bullets", o_laser);
		b = instance_create_layer(x + 32,y - 296, "Bullets", o_laserb);
		o_laser.image_xscale = 2;
		o_laserb.image_xscale = 2;
	}
	if o_stats.weapon_power == 3 {
		var a, b, c, d;
		a = instance_create_layer(x - 32,y - 296, "Bullets", o_laser);
		b = instance_create_layer(x + 32,y - 296, "Bullets", o_laserb);
		c =	instance_create_layer(x - 80,y - 264, "Bullets", o_laser2a);
		d = instance_create_layer(x + 80,y - 264, "Bullets", o_laser2b);
		o_laser.image_xscale = 2;
		o_laserb.image_xscale = 2;
	}
	if o_stats.weapon_power >= 4{
		
		a = instance_create_layer(x - 32,y - 296, "Bullets", o_laser);
		b = instance_create_layer(x + 32,y - 296, "Bullets", o_laserb);
		e = instance_create_layer(x,y -296, "Bullets", o_laserc);
		c =	instance_create_layer(x - 80,y - 264, "Bullets", o_laser2a);
		d = instance_create_layer(x + 80,y - 264, "Bullets", o_laser2b);
		
	}
	break;
#endregion hal
}