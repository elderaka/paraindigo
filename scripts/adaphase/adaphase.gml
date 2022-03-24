///@arg phs
///@arg spd

//ini buat fase2 bosnya

var phs = argument0;
var spd = argument1;

switch(phs){
	case 1:
		o_ada.ammo_ -= 1;
	for(var i = 0; i < 48; i++){
			var g = instance_create_depth(x,y,0,bada1b);
			g.direction = i*360/48 + 2.5*o_ada.ammo_;
			//FUCKING GOLDEN RATIO YESSSSSSSSS
	}
	for(var i = 0; i < 16; i++){
			var g = instance_create_depth(x,y,0,bada1a);
			g.direction = i*360/16 + 2.5*o_ada.ammo_;
		}
	break;
	case 2:
		o_styx.ammo_ -= 1;
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
	if instance_exists(o_ada3){
		for(var i = 0; i < 70; i++){
			var spawn1 = round(random_range(1,6))
			if spawn1 = 1{
				var up = instance_create_depth(room_width + 10 - i * 20,0,0,bada3)
				up.speed = spd
			}
			
			//up.direction = point_direction(x,y,o_ada3.x - 40, o_ada3.y)
			//up.image_angle = direction
		}
		for(var i = 0; i < 70; i++){
			var spawn2 = round(random_range(1,6))
			if spawn2 = 1{
			var down = instance_create_depth(room_width + 10 - i * 20,room_height-25,0,bada3)
			down.speed = spd
			down.frombelow = true
			}
			
			//down.direction = point_direction(x,y,o_ada3.x + 40, o_ada3.y)
			//down.image_angle = direction
		}
		for(var i = 0; i < 48; i++){
			var spawn3 = round(random_range(1,6))
			if spawn3 = 1{
			var left = instance_create_depth(0,room_height + 10 - i * 20,0,bada3)
			left.speed = spd
			}
			
			//left.direction = point_direction(x,y,o_ada3.x, o_ada3.y + 40)
			//left.image_angle = direction
		}
		for(var i = 0; i < 48; i++){
			var spawn4 = round(random_range(1,6))
			if spawn4 = 1{
			var right = instance_create_depth(room_width,room_height + 10 - i * 20,0,bada3)
			right.speed = spd
			}
			
			//right.direction = point_direction(x,y,o_ada3.x, o_ada3.y - 40)
			//right.image_angle = direction
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
					var g = instance_create_depth(o_MC.x + 200*cos((i*360/16)*(pi/180)) ,o_MC.y + 200*sin((i*360/16)*(pi/180)),0,bstyxe5);
					g.speed = spd;
					//OKE TADI GASENGAJA DPET KEREN. INTINYA THAT + COS(I*360/2I)
		}
	}
}