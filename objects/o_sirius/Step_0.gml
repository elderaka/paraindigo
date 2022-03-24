boss_timer += 1/room_speed;
hp_ = clamp(hp_,0,max_hp);
angle_b += 2
if boss_timer = 1{
	phase = 0.5;
}
#region faseskill
if tembak == true && phase == 1{
	if ammo_ > 0{
		siriusphase(1,3,0);  
		alarm[1] = 5; 
		tembak = false
	} else if ammo_ == 0{
		ammo_ = 46
		angle_1 += 11.5;
		angle_a += 10
		alarm[2] = 20;
		tembak = false
	}
}
else if tembak == true && phase == 2 && moved = true{
	if ammo_ > 0{
		siriusphase(2,3,0);  
		alarm[1] = 5; 
		if hp_ <= 3*max_hp/4 && ngeskill == true{
			for(var i = 0; i < 24; i++){
				var g = instance_create_layer(x,y,"Bullets", bsiriust6)
				g.speed = 3
				g.direction = i*360/24
			}
			alarm[6] = 300*(hp_/max_hp)
			alarm[6] = clamp(alarm[6],30,600)
			ngeskill = false
		}
		tembak = false
	} else if ammo_ == 0{
		ammo_ = 1;
		alarm[2] = 15;
		tembak = false
	}
} else if tembak == true && phase == 3 && moved = true{
	if ammo_ > 0{
		siriusphase(3,0,0);  
		alarm[1] = 5; 
		tembak = false
	} else if ammo_ == 0{
		ammo_ = 70;
		alarm[2] = 180;
		tembak = false
	}
} else if tembak == true && phase == 4{
	if ammo_ >0{
		ammo_ -= 1
		for(var i = 0; i < 240; i++){
			var l = instance_create_layer(x,y,"Bullets",bsiriust5)
			l.direction = i*360/240
			l.image_angle = direction
			l.speed = 3
		}
		alarm[5] = 60
			//var m = instance_create_layer((x+200*cos(((4-ammo_)*90+45)*(pi/180))) + 50*cos((i*360/18)*(pi/180)),(y + 50*sin(((4-ammo_)*90+45)*(pi/180))) + 50*sin((i*360/18)*(pi/180)),"Bullets",bsirius1)
			//m.direction = 360/i
			//m.speed = 0 //ANJGGGGGGGG AHHHHHHHHHHHHHHHHHH ASIDGASBDGIBADSOBGOASGOSD  BAIBASNDBNASJNVASJKNASDJKGNIOEWHG HA
		 //AHRHGHASUIHGUISHDGIUOASNVUASIB GUABGRCUOASBGUASJCKGNBSDDNSNDFSNDDSNNDFCSGSSNDADMAMDGMGDAGMDGDHADHDHBDJSD RDFJBTDUN AUSBDUJTEDTUS AUSRTGDBHNDGHDBUJASDTJS
		  //YA ALLAH GA KUAT AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
		alarm[1] = 120
		tembak = false
	} else if ammo_ == 0{
		ammo_ = 2
		alarm[1] = 240
		tembak = false
	}
		
} else if tembak == true && phase == 5{
	for (var i = 0; i < 4; i++){
		var g = instance_create_layer(x,y,"Bullets", bsirius2)
		g.direction = angle_b + 90*i
		g.speed =  2.5
		g.image_index =	2
	}
	for (var i = 0; i < 4; i++){
		var h = instance_create_layer(x,y,"Bullets", bsirius2)
		h.direction = -angle_b + 90*i
		h.speed =  2
		h.image_index = 5
	}
	alarm[1] = 2
	tembak = false
}
		
#endregion faseskill
#region skills
if hp_ <= max_hp/4 && useskill == 0{
	if phase == 1{
		useskill = 1
		audio_play_sound(enemyphase,1,false)
		instance_create_layer(x,y,"Bullets", o_sirius1)
		hp_ = hp_*6
		max_hp = max_hp*6
	}else if phase == 2{
		audio_play_sound(enemyphase,1,false)
		useskill = 1
		supido -= 5
		frequent -= 5
		hp_ = hp_*3
		max_hp = max_hp*3
	}else if phase == 3{
		useskill = 1
		audio_play_sound(enemyphase,1,false)
		hp_ = hp_*3
		max_hp = max_hp*3
	}else if phase == 5{
		useskill = 1
		audio_play_sound(enemyphase,1,false)
		supido = supido/2
		frequent = 300
		hp_ = hp_*2
		max_hp = max_hp*2
	}
}
#endregion skills
#region antarfase
if hp_ <= 0{
	audio_play_sound(enemyexplosion3,1,false)
	hp_ = 1;
	useskill = 0;
	phase += 0.5;
}
	
//buat naikin hp lagi
if phase == 1.5 && hp_ < max_hp{
	hp_ += max_hp*5/room_speed;
}
else if phase == 2.5 && hp_ < max_hp{
	hp_ += max_hp*5/room_speed;
}
else if phase == 3.5 && hp_ < max_hp{
	hp_ += max_hp*5/room_speed;
}
else if phase == 4.5 && hp_ < max_hp{
	hp_ += max_hp*5/room_speed;
}
else if phase == 5.5 && hp_ < max_hp{
	hp_ += max_hp*5/room_speed;
	isbeaten = true;
}
//buat balik ke tengah
if phase mod 1 = 0.5{ 
		move_towards_point(room_width/2, 200, point_distance(x,y,room_width/2,200)/30);
		
} else if phase == 2{move_towards_point(room_width/2, room_height/3, point_distance(x,y,room_width/2,room_height/3)/10);
} else if phase == 3{move_towards_point(room_width/2, room_height/3, point_distance(x,y,room_width/2,room_height/3)/10);
} else if phase == 4{move_towards_point(room_width/2, room_height/3, point_distance(x,y,room_width/2,room_height/3)/10);
}else if point_distance(x,y,room_width/2,200) < speed{
		x = room_width/2;
		y = 200;
		speed = 0;
}

//buat antarfase & reload ammo
if phase == 0.5 && hp_ == max_hp{
	//ammo_ = 13;
}

//buat ancurin bullet
if phase mod 1 == 0.5{ //destroy
		instance_destroy(bullets);
		instance_destroy(o_sirius1);
}

//buat balik ke main menu
if phase == 6 && o_stats.siriusisbeaten = false{ //destroy
	o_stats.siriusisbeaten = true;
	o_stats.bossbeaten = o_stats.bossbeaten + 1
	gotoscreen();
	instance_destroy();	
} else if phase == 6 && o_stats.siriusisbeaten = true{
	o_stats.siriusisbeaten2 = true
	gotoscreen();
	instance_destroy();	
}
#endregion antarfase
#region add maxhp + things
//buat nambah maxhp (sama cutscene maybe)
if phase < 1{
	hp_ += 200/room_speed;
}
if phase == 1 && check = 0{
	check = 0.5
	tembak = false
	audio_sound_gain(styxbattle,0,3000)
	var s = audio_play_sound(siriusbattle,20,true)
	audio_sound_gain(s,0,0)
	audio_sound_gain(s,1,3000)
	alarm[1] = 420
}
if phase == 1.5 && check = 0.5{
	check = 1
	max_hp = 1300
	ammo_ = 1
}
if phase == 2 && check = 1{
	check = 1.5
	
	alarm[4] = 10
}
if phase == 2.5 && check = 1.5{
	check = 2
	ammo_ = 70
	moved = false
	max_hp = 1700
}
if phase == 3 && check = 2{
	check = 2.5
	alarm[4] = 30
}
if phase == 3.5 && check = 2.5{
	check = 3
	ammo_ = 2
	max_hp = 1800
}
if phase == 4 && check = 3{
	check = 4
}
if phase == 4.5 && check = 4{
	check = 5
	ammo_ = 1
	frequent = 420
	max_hp = 2300
}
if phase == 5.5 & check = 5{
	check = 6
	max_hp = 100
}
#endregion add maxhp
#region dialogue
if o_stats.siriusisbeaten == false{
if phase mod 1 == 0.5 && page < pagelength{
	if dodialog == true{
		dodialog = false
		instance_create_layer(x,y,"Instances",o_dialogue);
	}
	siriusdialogue(phase,page,false)
	if keyboard_check_pressed(vk_space) && o_dialogue.charcount == string_length(dialogue[phase-0.5,page]){
		page += 1;
	}
	if (phase == 0.5 &&page == 3) || phase >= 1 {o_dialogue.name = "Sirius Rai"}
} else if page = pagelength{
	instance_destroy(o_dialogue);
	dodialog = true;
	phase += 0.5;
	page = 0;
	
}
}
else if o_stats.siriusisbeaten == true{
	if phase < 1 || phase > 5{
		if phase mod 1 == 0.5 && page < pagelength{
			if dodialog == true{
			dodialog = false
			instance_create_layer(x,y,"Instances",o_dialogue);
			}
			siriusdialogue(phase,page,false)
			if keyboard_check_pressed(vk_space) && o_dialogue.charcount == string_length(dialogue[phase-0.5,page]){
				page += 1;
			}
			if phase >= 0 {o_dialogue.name = "Sirius Rai"}
		} else if page = pagelength{
			dodialog = true
			instance_destroy(o_dialogue);
			phase += 0.5;
			page = 0;
		} 
	}else if phase mod 1 = 0.5 && hp_ = max_hp{
		phase += 0.5;
	}
}
#endregion dialogue