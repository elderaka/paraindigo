boss_timer += 1/room_speed;
hp_ = clamp(hp_,0,max_hp);

if boss_timer = 1{
	phase = 0.5;
}
#region faseskill

if tembak == true && phase == 1{
	if ammo_ > 0{
		arkasphase(1,supido,0);  
		alarm[1] = 10; 
		tembak = false
	} else if ammo_ == 0{
		ammo_ = 5;
		alarm[2] = frequent;
		tembak = false
	}
}
else if tembak == true && phase == 3{
	if ammo_ > 0 {
		ammo_ -= 1
		for(var i = 0; i < 12; i++){
			var g = instance_create_depth(x,y,0,barkas3b);	
			g.direction = i*360/12 + ammo_*10;
			alarm[1] = 10;
		}
		alarm[1] = supido
		tembak = false;
	} else if ammo_ == 0{
		ammo_ = 3;
		alarm[2] = frequent
		tembak = false
	}
} else if tembak == true && phase == 2{
	if ammo_ > 0{
		if useskill == 1{
			pick = choose(1,2,3,4)
		}
		arkasphase(3,0,pick);
		alarm[1] = supido;
		tembak = false;
	}else if ammo_ <= 0{
		ammo_ = 4
		alarm[2] = frequent;
		tembak = false
	}
} else if tembak == true && phase == 4{
	if ammo_ > 0{
		if useskill == 0{
			ammo_ -= 1
			if instance_exists(o_MC){
				g = instance_create_layer(x,y,"Bullets", barkas2)
				g.direction = point_direction(x,y,o_MC.x,o_MC.y) +random_range(-30,30)
				g.image_xscale = 1
				g.image_yscale = 1
				g.speed = random_range(2,10) 
				g.image_angle = point_direction(x,y,o_MC.x,o_MC.y) +90
			}
			if instance_exists(o_MC){
				g = instance_create_layer(x,y,"Bullets", barkas2)
				g.direction = point_direction(x,y,o_MC.x,o_MC.y) +random_range(-30,30)
				g.image_xscale = 1
				g.image_yscale = 1
				g.speed = random_range(2,10)
				g.image_angle = point_direction(x,y,o_MC.x,o_MC.y) +90
			}
			alarm[1] = 7.5;  
			tembak = false
		}
		if useskill == 1{
			ammo_ -= 1
			for(var i = 0; i < 24; i++){
			var g = instance_create_depth(x,y,0,bstyxe4b);
			g.direction = i*360/24 + 3*o_arkas.ammo_;
			}
			alarm[1] = 20;
			tembak = false
		}
	} else if ammo_ <= 0{
		if useskill == 0{
			useskill = 1
			ammo_ = 20;
		}else if useskill == 1{
			useskill = 0
			ammo_ = 40
		}
		alarm[2] = 30;
		tembak = false
	}
} else if tembak == true && phase == 5{
	if ammo_ > 0{
		if useskill == 0{
			ammo_ -= 1
			for(var i = 0; i < 24; i++){
				var g = instance_create_depth(x,y,0,barkas5a);
				g.direction = i*360/24 + 3*o_arkas.ammo_;
				g.speed = 3
			}
			alarm[1] = 10;
			tembak = false
		}if useskill == 1{
			ammo_ -= 1
			for(var i = 0; i < 12; i++){
				var g = instance_create_depth(x+200*ammo_,y,0,barkas5b);
				g.direction = i*360/12 + 3*o_arkas.ammo_;
				g.speed = 15
			}
			for(var i = 0; i < 12; i++){
				var g = instance_create_depth(x-200*ammo_,y,0,barkas5b);
				g.direction = i*360/12 + 3*o_arkas.ammo_;
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
		
#endregion faseskill
#region antarfase
if hp_ <= 0{
	audio_play_sound(enemyexplosion4,1,false)
	hp_ = 1;
	phase += 0.5;
	useskill = 0;
}
	
//buat naikin hp lagi
if phase == 2.5 && hp_ < max_hp{
	ammo_ = 3;
	supido = 10;
	frequent = 60
	hp_ += max_hp/15;
}
else if phase == 1.5 && hp_ < max_hp{
	ammo_ = 4
	supido = 30
	frequent = 150
	hp_ += max_hp/15;
}
else if phase == 3.5 && hp_ < max_hp{
	ammo_ = 40
	hp_ += max_hp/15;
}
else if phase == 4.5 && hp_ < max_hp{
	hp_ += max_hp/15;
}
else if phase == 5.5 && hp_ < max_hp{
	hp_ += max_hp/15
	isbeaten = true;
}
//buat balik ke tengah
if phase mod 2.5 = 0{ 
		move_towards_point(room_width/2, 200, point_distance(x,y,room_width/2,200)/30);
} else if point_distance(x,y,room_width/2,200) < speed{
		x = room_width/2;
		y = 200;
		speed = 0;
}

//buat ancurin bullet
if phase mod 1 == 0.5{ //destroy
		instance_destroy(bullets);
		instance_destroy(o_arkas2)
		instance_destroy(o_styx4);
}
if phase == 6 && o_stats.arkasisbeaten = false{ //destroy
	o_stats.arkasisbeaten = true;
	o_stats.bossbeaten += 1
	gotoscreen()
	instance_destroy();	
}else if phase == 6 && o_stats.arkasisbeaten = true{
	o_stats.arkasisbeaten2 = true
	gotoscreen()
	instance_destroy();	
}
#endregion antarfase
#region add maxhp + spawner
//buat nambah maxhpdan spawner  (sama cutscene maybe)
//intinya yg cuman dijalanin sekali
if phase < 1{
	hp_ += 200/room_speed;
}
if phase == 1 && check = 0{
	check = 0.5
	audio_sound_gain(styxbattle,0,3000)
	var s = audio_play_sound(arkasbattle,20,true)
	audio_sound_gain(s,0,0)
	audio_sound_gain(s,1,3000)
	instance_create_layer(x,y,"Instances",o_arkas1);
}
else if phase == 1.5 && check = 0.5{
	check = 1
	instance_destroy(o_arkas1)
	max_hp = 400
	}

else if phase == 2.5 && check = 1{
	check = 2
	max_hp = 800
}

else if phase == 3 && check = 2{
	check = 2.5
	a = instance_create_layer(x,y,"Bullets",o_arkas2)
	a.pattern = 2
	alarm[4] = 60
}
else if phase == 3.5 && check = 2.5{
	check = 3
	max_hp = 1200
}
else if phase == 4 && check = 3{
	check = 4
	
}
else if phase == 4.5 && check = 4{
	check = 5
	max_hp = 1400
}
else if phase == 5.5 & check = 5{
	check = 6
	max_hp = 100
}
else if phase == 6 & check = 6{
	
	}
#endregion add maxhp
#region skills
if hp_ <= max_hp/4 && useskill == 0{
	if phase == 1{
		audio_play_sound(enemyphase,1,false)
		useskill = 1
		supido += 5
		frequent = frequent/2
		hp_ = hp_*3
		max_hp = max_hp*3
	}else if phase == 2{
		audio_play_sound(enemyphase,1,false)
		useskill = 1
		supido -= 5
		frequent -= 5
		hp_ = hp_*3
		max_hp = max_hp*3
	}else if phase == 3{
		audio_play_sound(enemyphase,1,false)
		useskill = 1
		supido = supido/2
		frequent = 75
		hp_ = hp_*3
		max_hp = max_hp*3
	}
}
#endregion skills
#region dialogue
if o_stats.arkasisbeaten == false{
	if phase mod 1 == 0.5 && page < pagelength{
	if dodialog == true{
		dodialog = false
		instance_create_layer(x,y,"Instances",o_dialogue);
	}
	arkasdialogue(phase,page)
	if keyboard_check_pressed(vk_space) && !(o_dialogue.charcount == string_length(dialogue[phase-0.5,page])){ // WHAT THE FUCK
		page += 1;																							   // WHAT IN THE FUCKING FUCK
	}																										   // MAKSUDNYA APA ANJG
	if (phase == 0.5 &&page == 2) || phase >= 1 {o_dialogue.name = "Arkas Rai"}								   //KENAPA KALO NOT BARU BISA???
} else if page = pagelength{
	instance_destroy(o_dialogue);
	dodialog = true;
	phase += 0.5;
	page = 0;
	
}
}else if o_stats.arkasisbeaten == true{
	if phase < 1 || phase > 5{ 
		if phase mod 1 == 0.5 && page < pagelength{
			if dodialog == true{
				dodialog = false
				instance_create_layer(x,y,"Instances",o_dialogue);
			}
			arkasdialogue(phase,page)
			if keyboard_check_pressed(vk_space) && !(o_dialogue.charcount == string_length(dialogue[phase-0.5,page])){
				page += 1;
			}
			if phase >= 0.5 {o_dialogue.name = "Arkas Rai"}
		} else if page = pagelength{
			instance_destroy(o_dialogue);
			phase += 0.5
			page = 0;
		}
	}else if phase mod 1 = 0.5 && hp_ = max_hp{
		phase += 0.5;
		dodialog = true
	}
}
#endregion dialogue
