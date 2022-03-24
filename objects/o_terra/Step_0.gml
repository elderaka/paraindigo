boss_timer += 1/room_speed;
hp_ = clamp(hp_,0,max_hp);
angle_a += 2
if boss_timer = 1{
	phase = 0.5;
}
#region faseskill
/*
ammo = berapa kali nembak per fase
alarm[1] = berapa delay per nembak
alarm[2] = berapa delay per fase
(x,y): x = fase, y = ammo
*/
if tembak == true && phase == 1{
	if ammo_ > 0{
		terraphase(1,20);  
		alarm[1] = 20; 
		tembak = false
	} else if ammo_ == 0{
		ammo_ = 5;
		alarm[2] = 120;
		tembak = false
	}
}
else if tembak == true && phase == 2{
	if useskill = 0{
			
		if ammo_ > 0{
			ammo_ -= 1
			var g = instance_create_layer(x,y,"Bullets", bterra2)
			g.direction = 30 + ammo_ * 8
			var h = instance_create_layer(x,y,"Bullets", bterra2)
			h.direction = 150 - ammo_ * 8
			alarm[1] = 10;
			tembak = false;
		}else if ammo_ <= 0{
			useskill = 1
			ammo_ = 75
			alarm[2] = frequent;
			tembak = false
		}
	}else if useskill = 1{
		
		if ammo_ > 0{
			terraphase(2,10);
			alarm[1] = 3;
			tembak = false;
		}else if ammo_ <= 0{
			useskill = 0
			if hp_ > max_hp/2{
				ammo_ = 10
			} else ammo_ = 14
			alarm[2] = frequent
			tembak = false
		}
	}
} else if tembak == true && phase == 3{
	if ammo_ > 0{
		terraphase(3,2);
		alarm[1] = frequent;
		tembak = false
	} else if ammo_ == 0{
		ammo_ = 1;
		tembak = false
	}
}
		
#endregion faseskill
#region skills
if hp_ <= max_hp/2{
	if phase == 1  && useskill == 0{
		useskill = 1
		audio_play_sound(enemyphase,1,false)
		hp_ = hp_*3
		max_hp = max_hp*3
	}else if phase == 2 && doet = 0{
		doet = 1;
		audio_play_sound(enemyphase,1,false)
		frequent = 80;
		hp_ = hp_*2
		max_hp = max_hp*2
	}else if phase == 3 && useskill = 0{
		useskill = 1
		audio_play_sound(enemyphase,1,false)
		frequent = 240
		hp_ = hp_*2
		max_hp = max_hp*2
	}
}
#endregion skills
#region antarfase
if hp_ <= 0{
	audio_play_sound(enemyexplosion2,1,false)
	hp_ = 1;
	phase += 0.5;
}
	
//buat naikin hp lagi
if phase == 1.5 && hp_ < max_hp{
	hp_ += max_hp*5/room_speed;
}
if phase == 2.5 && hp_ < max_hp{
	hp_ += max_hp*5/room_speed;
}
if phase == 3.5 && hp_ < max_hp{
	hp_ += max_hp*5/room_speed;
}
if phase == 4.5 && hp_ < max_hp{
	hp_ += max_hp*5/room_speed;
}
if phase == 5.5 && hp_ < max_hp{
	hp_ += max_hp*5/room_speed
	
}
//buat balik ke tengah
if phase mod 1 = 0.5{ 
		move_towards_point(room_width/2, 200, point_distance(x,y,room_width/2,200)/30);
} else if point_distance(x,y,room_width/2,200) < speed{
		x = room_width/2;
		y = 200;
		speed = 0;
}

//buat antarfase & reload ammo
if phase mod 1 = 0.5 && hp_ == max_hp{
	useskill = 0
}

//buat ancurin bullet
if phase mod 1 == 0.5{ //destroy
		tembak = true
		useskill = 0;
		instance_destroy(bullets)
		instance_destroy(o_terra1);
		instance_destroy(o_terra2);
		instance_destroy(o_terra3);
}
if phase == 6 && o_stats.terraisbeaten = false{ //destroy
	o_stats.terraisbeaten = true;
	o_stats.bossbeaten = o_stats.bossbeaten + 1
	gotoscreen();
	instance_destroy();	
}
#endregion antarfase
#region add maxhp + things
//buat nambah maxhp (sama cutscene maybe)
if phase < 1{
	hp_ += 200/room_speed;
}
if phase == 1 && check = 0 {
	check = 0.5
	audio_sound_gain(styxbattle,0,0)
	music = audio_play_sound(terrabattle,20,true)
	audio_sound_gain(music,0,0)
	audio_sound_gain(music,1,2000)
	instance_create_layer(x,y,"Bullets",o_terra1)
}
if phase == 1.5 && check = 0.5{
	check = 1
	ammo_ = 10
	useskill = 0
	max_hp = 450
}
//if phase == 2 && check = 
if phase == 2.5 && check = 1{
	check = 2
	ammo_ = 1
	frequent = 360
	max_hp = 1400
}
if phase == 3.5 && check = 2{
	check = 3
	max_hp = 1600
}
if phase == 4 && check = 3{
	check = 4
	for (var i = 0; i < 4; i++){
		var g = instance_create_layer(x + 100*dcos(i*90),y + 100*dsin(i*90),"Instances",o_terra3);
		g.angle = i*90
		g.indekusu = i
	}
}
if phase == 4.5 && check = 4{
	check = 5
	audio_sound_gain(music,0,2000)
	max_hp = 200
}
if phase == 5.5 & check = 5{
	check = 6
	o_stats.terraisbeaten = true;
	o_stats.bossbeaten += 1
	max_hp = 100
}
#endregion add maxhp
#region dialogue
if phase mod 1 == 0.5 && page < pagelength{
	if dodialog == true{
		instance_create_layer(x,y,"Instances",o_dialogue);
		dodialog = false
	}
	
	terradialogue(phase,page)
	if (keyboard_check_pressed(vk_space) && o_dialogue.charcount == string_length(dialogue[phase-0.5,page])){
		page += 1;
	}
	if (phase == 0.5 && (page == 1 || page == 6)) || phase >= 1 {o_dialogue.name = "Alice Tet"}
	if phase == 0.5 && (page == 2 || page == 5 || page == 7 || page == 12 || page == 16){o_dialogue.name = "Terra Rai"}
	if phase == 0.5 && page == 3 {o_dialogue.name = "Xenos Rai"}
	if phase == 0.5 && page == 11 {o_dialogue.name = "+3"}
	if phase == 0.5 && page == 14 {o_dialogue.name = "-4"}
	if phase == 0.5 && page == 15 {o_dialogue.name = "+5"}
	if phase >= 3 {o_dialogue.name = "???"}
	if phase == 5.5 && page == 4 {o_dialogue.name = "NULL"}
} else if page = pagelength{
	instance_destroy(o_dialogue);
	dodialog = true
	phase += 0.5;
	page = 0;
	
}
#endregion dialogue