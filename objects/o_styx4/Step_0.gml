/// @description Insert description here
// You can write your code in this editor
//boss_timer += 1/room_speed;

if tembak == true{
		ammo_ -= 1;
		angle_a = (angle_a + 10) mod 360;
		var g = instance_create_depth(x-100,y,0,bstyxe3);
		g.speed = 2;
		g.direction = angle_a
		var i = instance_create_depth(x-100,y,0,bstyxe3);
		i.speed = 2;
		i.direction = angle_a + 90
		var v = instance_create_depth(x-100,y,0,bstyxe3);
		v.speed = 2;
		v.direction = angle_a + 180
		var w = instance_create_depth(x-100,y,0,bstyxe3);
		w.speed = 2;
		w.direction = angle_a + 270
		var h = instance_create_depth(x+100,y,0,bstyxe3);
		h.speed = 2;
		h.direction = angle_a
		var j = instance_create_depth(x+100,y,0,bstyxe3);
		j.speed = 2;
		j.direction = angle_a + 90
		var q = instance_create_depth(x+100,y,0,bstyxe3);
		q.speed = 2;
		q.direction = angle_a + 180
		var r = instance_create_depth(x+100,y,0,bstyxe3);
		r.speed = 2;
		r.direction = angle_a + 270
	alarm[1] = 30;
	tembak = false;
	if ammo_ <= 0{
		ammo_ = 1
		alarm[2] = 2;
	}
} 