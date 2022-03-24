///@arg phs
///@arg spd
///@arg randomizer

//ini buat fase2 bosnya

var phs = argument0;
var spd = argument1;
var type = argument2;
var color = 0
switch(type){
	case 0: color = 3
	break;
	case 1: color = 1
	break;
	case 2: color = 0
	break; 
	case 3: color = 3
	break;
	case 4: color = 4
	break;
}
switch(phs){
	case 1:
		o_terra.ammo_ -= 1;
		
	break;
	case 2:
		o_terra.ammo_ -= 1;
		if instance_exists(o_MC){
			if o_terra.ammo_ > 20{
				for(var i = 0; i < 4; i++){
					var g = instance_create_layer(x,y,"Bullets",bterra2c)
					g.direction = i*90 + 45 + 4.5*(o_terra.ammo_-20)
				}
			}else if o_terra.ammo_ <= 20{
				for(var i = 0; i < 4; i++){
					var g = instance_create_layer(x,y,"Bullets",bterra2c)
					g.direction = i*90 + 45 - 4.5*(o_terra.ammo_)
				}
			}
		}
	break;
	case 3:
		if instance_exists(o_MC){
		randomizer = random_range(0,45)
		for(var i = 0; i < 8; i++){
	    var g = instance_create_layer(x,y,"Bullets",bsirius6);
	    g.direction = i*360/8 + randomizer
	    g.speed = spd
	 }
	}
	break;
	case 4:
	// Jadi ini buat dulu spiral muter trus directionnya baru itu, ato ga make golden ratio
	// tapi gimana cara bikinin algorithmnya itu jadi golden ratio?
	//
	o_sirius.ammo_ -= 1;
	for(var i = 0; i < 48; i++){
			var g = instance_create_depth(x,y,0,bstyxe4b);
			g.direction = i*360/48 + 2.5*o_styx.ammo_;
			//FUCKING GOLDEN RATIO YESSSSSSSSS
	}
	for(var i = 0; i < 16; i++){
			var g = instance_create_depth(x,y,0,bstyxe4a);
			g.direction = i*360/16 + 2.5*o_styx.ammo_;
		}
	break;
	case 5:
	if instance_exists(o_MC){
		randomizer = random_range(0,45)
		for(var i = 0; i < 8; i++){
					var g = instance_create_layer(x,y,"Bullets",bsirius6);
					g.direction = i*360/8 + randomizer
					g.speed = spd
		}
	}
}