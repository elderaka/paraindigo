boss_timer += 1/room_speed
image_angle += 0.05
hp_ = clamp(hp_,0,max_hp)
angle_b += 2
angle_2 += 2;
#region misc stuff
if instance_exists(o_ada3){
	x = o_ada3.x
}
if !(pattern = 3){ 
		move_towards_point(room_width/2, room_height/3, point_distance(x,y,room_width/2,room_height/3)/30);
} else if point_distance(x,y,room_width/2,room_height/3) < speed{
		x = room_width/2;
		y = room_height/3;
		speed = 0;
}
if o_stats.deathcount > 15{
	o_stats.endingroute = 3
}
if pattern == 7{
	pattern = 1
}
if o_stats.firstbeaten = false{
	if o_stats.petch > 0.5{
		o_stats.petch -= 0.05/room_speed*5
	}
	audio_sound_pitch(o_stats.titlesound,o_stats.petch)
} 
if boss_timer = 1 && phase = 0{
	phase = 0.5;
}
if o_stats.act >= 2 && playedmusic = false{
	
	if o_stats.deathcount = 0 && o_stats.runaway = 0 && page = 25{
		var music = audio_play_sound(adabattle,0,true)
		audio_sound_gain(music,1,5000)
		playedmusic = true
	}else{
		if phase >= 1{
			audio_play_sound(adabattle,10,true)
			playedmusic = true
		}
	}
}
#endregion misc stuff
#region faseskill
/*
ammo = berapa kali nembak per fase
alarm[1] = berapa delay per nembak
alarm[2] = berapa delay per fase
(x,y): x = fase, y = ammo
*/
if tembak == true && pattern == 1{ //Pattern biasa kek styx awal2
	if ammo_ > 0{
		adaphase(1,20);
		alarm[1] = 20;  
		tembak = false
	} else if ammo_ == 0{
		ammo_ = 3;
		alarm[2] = 120;
		tembak = false
	}
}
else if tembak == true && pattern == 2{
	boss_timer = clamp(boss_timer,0,5)
	if ammo_ > 0{
		angle_2 += boss_timer*9
		for (var i = 0; i < 42; i++){   //wait a minute, gimana kalo diputer aja which bisa coincidentally
			var g = instance_create_layer(x,y,"Bullets",bada2) //bakal bikin sekitar 8 direction
			g.speed = 7
			g.direction = i*360/42 + angle_2							   //or bener, ditambah angle_2
			g.image_angle = i*360/42 + angle_2
			g.image_index = ((i+1) mod 6) - 1						   //But first, apa yg harus diganti
		}															   //Image angle speed or, firerate
		alarm[1] = 13-(boss_timer);												   //okay, image angle tetep segitu
		tembak = false;
	}
	
}
else if tembak == true && pattern == 3{
	if ammo_ > 0{
		alarm[1] = 7.5;
		adaphase(3,10)
		
		tembak = false
	} else if ammo_ == 0{
		ammo_ = 1;
		tembak = false
	}
}
else if tembak == true && pattern == 4{ //Pattern Arkas
	if ammo_ > 0{
		if useskill == 0{
			ammo_ -= 1
			for(var i = 0; i < 24; i++){
				var g = instance_create_depth(x,y,0,bada4a);
				g.direction = i*360/24 + 3*ammo_;
				g.speed = 3
			}
			alarm[1] = 10;
			tembak = false
		}if useskill == 1{
			ammo_ -= 1
			for(var i = 0; i < 12; i++){
				var g = instance_create_depth(x+200*ammo_,y,0,bada4b);
				g.direction = i*360/12 + 3*ammo_;
				g.speed = 15
			}
			for(var i = 0; i < 12; i++){
				var g = instance_create_depth(x-200*ammo_,y,0,bada4b);
				g.direction = i*360/12 + 3*ammo_;
				g.speed = 15
			}
			alarm[1] = 20;
			tembak = false
		}
	} else if ammo_ <= 0{
		if useskill == 0{
			useskill = 1
			ammo_ = 4;
			alarm[2] = 30
		}else if useskill == 1{
			ammo_ = 20
			alarm[5] = 180
		}
		tembak = false
	}
}
else if tembak == true && pattern == 5{ //Pattern Sirius
	for (var i = 0; i < 4; i++){
		var g = instance_create_layer(x,y,"Bullets", bsirius2)
		g.direction = angle_b + 90*i
		g.speed =  2.5
		g.image_index =	1
	}
	for (var i = 0; i < 4; i++){
		var h = instance_create_layer(x,y,"Bullets", bsirius2)
		h.direction = -angle_b + 90*i
		h.speed =  2.5
		h.image_index = 6
	}
	alarm[1] =2
	tembak = false
}
else if tembak == true && pattern == 6{ //Pattern Terra
}
		
#endregion faseskill
#region antarfase
if phase = 1{
	patternbefore = pattern
	pattern = 1
	
}
if phase >= 2 && phase mod 1 = 0 && selectpattern = true{
	selectpattern = false
	
	pattern = round(random_range(1,6))
	if pattern == patternbefore{
		pattern += 1
	}
}
if hp_ <= 0{
	hp_ = 1;
	audio_play_sound(enemyexplosion4,1,false)
	patternbefore = pattern
	phase += 0.5;
}
	
//buat naikin hp lagi
if phase mod 1 == 0.5 && hp_ < max_hp{
	ammo_ = 3;
	selectpattern = true
	hp_ = max_hp;
	check = 0
}
if phase mod 1 == 0.5{ //destroy
		pattern = 0
		max_hp = defaultmax
		instance_destroy(bullets);
		instance_destroy(o_styx4);
		instance_destroy(o_ada3);
		instance_destroy(o_ada6)
}
if phase == 17.5 && (o_dialogue.charcount == (string_length(o_dialogue.text)-2)){
	page += 0.5
}
if phase == 18 || phase == 51{
	if phase == 18{
		o_stats.act = 5
	}
	if phase == 51{
		if o_stats.endingroute = 7{
			o_stats.act = 5
		}else{
			o_stats.act = 2.5
		}
	}
	o_stats.runaway = 0;
	game_restart()
	instance_destroy();	
}
#endregion antarfase
#region add maxhp
//buat nambah maxhp (sama cutscene maybe)
if phase < 1{
	hp_ += 200/room_speed;
}
if phase == 1{
	o_stats.runaway = 0
	o_stats.firsttime2 = false
}
if pattern == 1 && check != 1{
	check = 1
	instance_create_layer(x,y,"Instances",o_styx4);
}
if pattern == 2{
	check = 2
}
if pattern == 3 && check != 3{
	check = 3
	if instance_exists(o_MC){
	instance_create_layer(o_MC.x,o_MC.y,"Instances",o_ada3);
	}
}
if pattern == 4 && check != 4{
	check = 4
	useskill = 0
	ammo_ = 20
}
if pattern == 5{
	check = 5
}
if pattern == 6 && check != 6{
	check = 6
	for (var i = 0; i < 4; i++){
		var g = instance_create_layer(x + 100*dcos(i*90),y + 100*dsin(i*90),"Instances",o_ada6);
		g.angle = i*90
		g.indekusu = i
	}
}
#endregion add maxhp	
#region stubborness
if instance_exists(o_dialogue){
	if stubborn = 5{
		called = false //idk tf am i doing. Tapi intinya this work so I wouldn't bother
	}				   //Jadi sebelumnya gak dicall, jadinya stubborn 5 masih aja gak bisa diskip
	if ((stubborn < 4 && page = 23) || (stubborn < 9 && page = 24 && spawned = false) || (o_stats.deathcount = 5 && page = 1) || (o_stats.deathcount = 10 && page = 2) || (o_stats.deathcount = 15 && page = 3)) && (o_dialogue.charcount == string_length(o_dialogue.text)) && spawned = false && phase < 1 && o_stats.act >= 2 && o_stats.runaway = 0{
		spawned = true
		instance_create_layer(x,y,"Instances",o_adachoice)
	}
	
}
#endregion stubborness
#region dialogue

if o_stats.firstbeaten = false{
	if phase mod 1 == 0.5 && page < pagelength{
		if dodialogue = false{
			dodialogue = true
			instance_create_layer(x,y,"Instances",o_dialogue);
		}
		adadialogue(phase,page)
		o_dialogue.name = "???"
		if keyboard_check_pressed(vk_space) && !(page = 30 && o_dialogue.alpa > 0) &&(o_dialogue.alpa = 1 || o_dialogue.alpa = 0) && o_dialogue.charcount == string_length(o_dialogue.text){
			page += 1;
		}
	}
}else if o_stats.firstbeaten = true{
	if phase mod 1 == 0.5 && page < pagelength{
		if dodialogue == false{
			dodialogue = true
			instance_create_layer(x,y,"Instances",o_dialogue);
		}
		if called = false{
			called = true
			adadialogue(phase,page)
		}
		if keyboard_check_pressed(vk_space) && !(instance_exists(o_adachoice)) && (o_dialogue.charcount == string_length(o_dialogue.text)){
			page += 1;
			called = false
		}
		if phase == 0.5 && page == 26 && (o_dialogue.charcount == (string_length(o_dialogue.text)-2)){
			page += 1;
			called = false
		}
		if phase == 17.5 && (page >= 5 && page <= 7){
			o_dialogue.name = "Alice Tet"
		}else{o_dialogue.name = "Ada Cherubim"}
	} else if page = pagelength{
		instance_destroy(o_dialogue);
		dodialogue = false;
		phase += 0.5
		called = false
		page = 0;
	}
}


//buat firstbeaten
if instance_exists(o_dialogue){
	if o_dialogue.fading = true{
		image_alpha -= 0.01
		o_MC.image_alpha -= 0.01
	}
	if o_dialogue.feding = true{
	close_timer += 1/room_speed
	}
}
if close_timer > 6{
	if o_stats.usedcheat = false{
		o_stats.act = 2
		o_stats.firstbeaten = true
	}else{
		o_stats.act = 5
		o_stats.endingroute = 9
	}
	simpan();
	game_restart();
}
#endregion dialogue