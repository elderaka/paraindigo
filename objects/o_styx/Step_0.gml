boss_timer += 1/room_speed;
hp_ = clamp(hp_,0,max_hp);
path_spd = speed;
if(path_spd == 1) {
   image_xscale = -1
}else {
  image_xscale = 1
}
if boss_timer = 1{
	phase = 0.5;
}

#region faseskill

if instance_exists(o_MC){
if tembak == true && phase == 1{
	if ammo_ > 0{
		styxphase(1,20);  
		alarm[1] = 20; 
		tembak = false
	} else if ammo_ == 0{
		ammo_ = 5;
		alarm[2] = 120;
		tembak = false
	}
}
else if tembak == true && phase == 2{
	styxphase(2,3);
	alarm[1] = 20;
	tembak = false;
	if ammo_ <= 0{
		ammo_ = 1
		alarm[2] = 40;
	}
} else if tembak == true && phase == 3{
	styxphase(3,3);
	alarm[1] = 20;
	tembak = false;
	if ammo_ <= 0{
		ammo_ = 1
		alarm[2] = 2;
	}
} else if tembak == true && phase == 4{
	o_stats.hp_ = clamp(o_stats.hp_,0,1)
	if ammo_ > 0{
		styxphase(4,20);
		alarm[1] = 20;  
		tembak = false
	} else if ammo_ == 0{
		ammo_ = 3;
		alarm[2] = 120;
		tembak = false
	}
} else if tembak == true && phase == 5{
	
	if ammo_ > 0{
		styxphase(5,3);
		alarm[1] = 20;
		tembak = false
	} else if ammo_ == 0{
		ammo_ = 1;
		alarm[2] = 120;
		tembak = false
	}
}
}
#endregion faseskill
#region antarfase
if hp_ <= 0{
	audio_play_sound(enemyexplosion1,1,false)
	hp_ = 1;
	phase += 0.5;
}
	
//buat naikin hp lagi
if phase mod 1 = 0.5 && hp_ == max_hp{
	ammo_ = 3;
}
if phase == 1.5 && hp_ < max_hp{
	hp_ += 600/room_speed;
}
else if phase == 2.5 && hp_ < max_hp{
	hp_ += 600/room_speed;
}
else if phase == 3.5 && hp_ < max_hp{
	hp_ += 4000/room_speed;
	o_stats.lives_ = 1;
	isbeaten = true;
}
else if phase == 4.5 && hp_ < max_hp{
	hp_ += 20000/room_speed;
}
if phase == 5.5{
	instance_destroy();		
}

//buat balik ke tengah
if phase mod 2.5 = 0 || phase mod 1.5 = 0{ 
		move_towards_point(room_width/2, 200, point_distance(x,y,room_width/2,200)/30);
}
if phase == 2 && change == 0{
	change = 1
	path_start(styxepath2,0.75,path_action_restart,0)
}

//buat ancurin bullet
if phase mod 1 == 0.5{ //destroy
		instance_destroy(bullets);
		instance_destroy(o_styx4);
}

#endregion antarfase
#region add maxhp + spawner
//buat nambah maxhp (sama cutscene maybe)
if phase < 1{
	hp_ += 200/room_speed;
}
else if phase == 1.5 && check = 0{
	check = 1
	max_hp = 150
}
else if phase == 2.5 && check = 1{
	check = 2
	max_hp = 600
}
else if phase == 3.5 && check = 2{
	check = 3
	if o_stats.styxisbeaten = false{
		audio_sound_gain(o_stats.styxmusic,0, 1000);
	}
	max_hp = 2000
	
}
else if phase == 4 && check = 3{
	check = 4
	if o_stats.styxisbeaten = false{
		o_stats.styxisbeaten = true
		o_stats.firsttime = false
		o_stats.act = 1
		audio_play_sound(sustyxlast,10,true)
		instance_create_layer(x,y,"Instances",o_styx4);
	}else if o_stats.styxisbeaten = true{
		gotoscreen();
		instance_destroy();	
	}
}
else if phase == 4.5 && check = 4{
	check = 5
	max_hp = 20000
}
else if phase == 11{
	o_stats.act = 5
	game_restart()
}
if ((phase == 3.5 && page == 2) || phase >= 4) && o_stats.styxisbeaten = false{
	layer_background_visible(suswp,true)
	
};
#endregion add maxhp + spawner
#region dialogue
if phase mod 1 == 0.5 && page < pagelength{
	if dodialog == true{
		dodialog = false
		instance_create_layer(x,y,"Instances",o_dialogue);
	}
	styxdialogue(phase,page)
	if keyboard_check_pressed(vk_space) && o_dialogue.charcount == string_length(dialogue[phase-0.5,page]){
		page += 1
	} 
	if (phase == 0.5 && page == 4) || phase > 1 {o_dialogue.name = "Styx Rai"}
} else if page = pagelength{
	instance_destroy(o_dialogue);
	phase += 0.5;
	dodialog = true
	page = 0;
} 
#endregion dialogue
#region cheat
//y'know, gw terlalu males masukin di region yang dah ada jadi gw bakal bikin region atu lagi
if o_stats.styxisbeaten = false && o_stats.godmode = true{
	o_stats.endingroute = 8
	o_stats.canusegodmode = false
	o_stats.godmode = false
	layer_background_visible(suswp,true)
	phase = 10.5
	page = 0
}
#endregion cheat
	