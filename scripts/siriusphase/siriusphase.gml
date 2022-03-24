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
		o_sirius.ammo_ -= 1;
		if (o_sirius.ammo_) > 3 && !(o_sirius.ammo_ < 46-9 && o_sirius.ammo_ > 46-15) && !(o_sirius.ammo_ < 46-20 && o_sirius.ammo_ > 46-26){
			for(var i = 0; i < 16; i++){
				var g = instance_create_depth(x,y,0,bsirius2);
				g.image_index = 3;
				g.speed = spd;
				g.direction = i*360/16 + 1*ammo_ + angle_1;
			}
			for(var i = 0; i < 24; i++){
				var g = instance_create_depth(x,y,0,bsirius2);
				g.image_index = 5;
				g.speed = spd;
				g.direction = i*360/16 - 1*ammo_ +angle_1; 
			}
		}
	break;
	case 2:
		o_sirius.ammo_ -= 1;
		if instance_exists(o_MC){
			for(var j = 0; j < 4; j++){
				for(var i = 0; i < 12; i++){
					var g = instance_create_layer(x,y,"Bullets",bsirius2)
					g.image_index = 3
					g.direction = 28.5 + i*3 + j*90
					g.image_angle = direction
					if i <= 5{
						g.speed = 0.5*i +3
					}if i > 5{
						g.speed =  -(0.5)*i +9
					}
				}
			}for(var j = 0; j < 4; j++){
				
				for(var i = 0; i < 3; i++){
					var g = instance_create_layer(x,y,"Bullets",bsirius1)
					g.image_index = 1
					g.direction = random_range(22+j*90+45,68+j*90+45)
					g.image_angle = direction
					g.speed = spd
				}
			}
		}
	break;
	case 3:
		o_sirius.ammo_ -= 1;
		if instance_exists(o_MC){
			for(var i = 0; i < 4; i++){
					var g = instance_create_depth(x,y,0,bsirius4);
					g.direction = i*90
					g.speed = 5;
					//TUNGGU DULU, JADI INI MAKE SIN/COS WAVE, TAPI RUMUSNYA GIMANA? BENTAR, KALO MISALNYA
					//	
			}
			for(var i = 0; i < 4; i++){
					var g = instance_create_depth(x,y,0,bsirius4);
					g.direction = i*90 +45
					g.speed = 5;
			}
			//for(var i = 0; i < 72; i++){
			//		var g = instance_create_depth(x + 50*cos(i/72*pi*2) ,y + 50*sin(i/72*pi*2),0,bstyxe2);
			//		g.direction = i*360/72
			//		g.speed = 5;
			//		//OKE TADI GASENGAJA DPET KEREN. INTINYA THAT + COS(I*360/2I) //(i*360/12)*(pi/180)
			//}
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