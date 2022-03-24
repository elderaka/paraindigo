///@arg phs
///@arg spd

//ini buat fase2 bosnya

var phs = argument0;
var spd = argument1;

switch(phs){
	case 1:
		o_styx.ammo_ -= 1;
		if instance_exists(o_MC){
		for(var i = 0; i < 16; i++){
				var g = instance_create_depth(x,y,0,bstyxe4a);
				g.image_angle = i*360/16 + 2.5*o_styx.ammo_;
				g.direction = i*360/16 + 2.5*o_styx.ammo_;
			}
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
		o_styx.ammo_ -= 1;
		o_styx.angle_a = (angle_a + 10) mod 360;
		var g = instance_create_depth(x-100,y,0,bstyxe3);
		g.speed = spd;
		g.direction = angle_a
		var i = instance_create_depth(x-100,y,0,bstyxe3);
		i.speed = spd;
		i.direction = angle_a + 90
		var v = instance_create_depth(x-100,y,0,bstyxe3);
		v.speed = spd;
		v.direction = angle_a + 180
		var w = instance_create_depth(x-100,y,0,bstyxe3);
		w.speed = spd;
		w.direction = angle_a + 270
		var h = instance_create_depth(x+100,y,0,bstyxe3);
		h.speed = spd;
		h.direction = angle_a
		var j = instance_create_depth(x+100,y,0,bstyxe3);
		j.speed = spd;
		j.direction = angle_a + 90
		var q = instance_create_depth(x+100,y,0,bstyxe3);
		q.speed = spd;
		q.direction = angle_a + 180
		var r = instance_create_depth(x+100,y,0,bstyxe3);
		r.speed = spd;
		r.direction = angle_a + 270
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