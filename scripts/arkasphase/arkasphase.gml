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
		o_arkas.ammo_ -= 1;
		if instance_exists(o_MC){
			
			var g = instance_create_layer(x,y,"Bullets",barkas1);
			g.spd = spd;
			g.pattern = 3;
			var h = instance_create_layer(x,y,"Bullets",barkas1);
			h.spd = spd;
			h.pattern = 4;
			
		}
	break;
	case 2:
		o_arkas.ammo_ -= 1;
		for(var i = 0; i < 144; i++){
				var g = instance_create_depth(x,y,0,bstyxe2);
				g.speed = spd;
				g.direction = i*360/144 + i/7;
				if g.direction > 269 && g.direction < 271{
					instance_destroy(g);
				}
	
	}
	break;
	case 3:
		o_arkas.ammo_ -= 1;
		if instance_exists(o_MC){
			for(var i = 0; i < 24; i++){
				var g = instance_create_depth((4-o_arkas.ammo_)*140 + 777 + 45*cos((i*360/12)*(pi/180)) ,(4-o_arkas.ammo_)*50 + 245 + 45*sin((i*360/12)*(pi/180)),0,barkas4);
				g.image_angle = (point_direction(g.x,g.y, (4-o_arkas.ammo_)*140 + 777,(4-o_arkas.ammo_)*50 + 206))
				g.image_index = 4
				g.speed = spd;
				g.image_index = type
				g.variant = type
			}
			for(var i = 0; i < 12; i++){
				var g = instance_create_depth(-((4-o_arkas.ammo_)*140) + 700 - 77 + 45*cos((i*360/12)*(pi/180)) ,(4-o_arkas.ammo_)*50 + 245 + 45*sin((i*360/12)*(pi/180)),0,barkas4);
				g.image_angle = (point_direction(g.x,g.y, -(4-o_arkas.ammo_)*140 + 700-77,(4-o_arkas.ammo_)*50 + 206))
				g.image_index = 4
				g.speed = spd;
				g.image_index = type
				g.variant = type
			}
			for(var i = 0; i < 24; i++){
				var g = instance_create_depth((4-o_arkas.ammo_)*140 + 777 + 45*cos((i*360/12)*(pi/180)) ,(4-o_arkas.ammo_)*50 + 146 + 45*sin((i*360/12)*(pi/180)),0,barkas4);
				g.image_angle = (point_direction(g.x,g.y, (4-o_arkas.ammo_)*140 + 777,(4-o_arkas.ammo_)*50 + 146))
				g.image_index = 4
				g.speed = spd;
				g.image_index = type
				g.variant = type
			}
			for(var i = 0; i < 12; i++){
				var g = instance_create_depth(-((4-o_arkas.ammo_)*140) + 700 - 77 + 45*cos((i*360/12)*(pi/180)) ,(4-o_arkas.ammo_)*50 + 146 + 45*sin((i*360/12)*(pi/180)),0,barkas4);
				g.image_angle = (point_direction(g.x,g.y, -(4-o_arkas.ammo_)*140 + 700-77,(4-o_arkas.ammo_)*50 + 146))
				g.image_index = 4
				g.speed = spd;
				g.image_index = type
				g.variant = type
			}
			for(var i = 12-(3*o_arkas.ammo_); i < (3*(5-o_arkas.ammo_)); i++){
				var g = instance_create_depth((4-o_arkas.ammo_) + 700 +90*cos((i*360/12)*(pi/180)) ,(4-o_arkas.ammo_) + room_height/2 + 90*sin((i*360/12)*(pi/180)),0,barkas4);
				g.image_angle = (point_direction(g.x,g.y,700,480))
				g.image_index = 4
				g.speed = spd;
				g.image_index = type
				g.variant = type
			}
		}
	break;
	case 4:
	//jadi gw pengen ke point 100 dari point 0 dalam 1 detik, dengan cara deakselerasi. setelah sampe point 100, nunggu setengah detik ntar bakal akselerasi lagi tapi lurus.
	//untuk pattern 2 dalam fase yang sama, sama kek pattern satu tapi dia akselerasinya ke player dan lebih cepat 2x lipat dari pattern 1
	//yang perlu gw cari tau terlebih dahulu itu adalah gimana caranya dia berhenti tepat di point 100 dengan akselerasi tersebut
	o_styx.ammo_ -= 1;
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
		for(var i = 0; i < 16; i++){
					var g = instance_create_depth(o_MC.x + 200*cos(i*360/16) ,o_MC.y + 200*sin(i*360/16),0,bstyxe5);
					g.speed = spd;
					//OKE TADI GASENGAJA DPET KEREN. INTINYA THAT + COS(I*360/2I)
		}
	}
}