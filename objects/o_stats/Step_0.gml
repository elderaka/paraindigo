/// @description Insert description here
// You can write your code in this editor


#region gameover
if lives_ <= 0 && deed = false && firstbeaten == false{
	deed = true
	audio_play_sound(geym,1,false)
	instance_create_layer(room_width/2,room_height/2, "instances", o_gameover);
}else if lives_ <= 0 && deed = false && firstbeaten{
	deathcount += 1
	game_restart();
}
#endregion gameover

#region pause
//Pause screen
if keyboard_check_pressed(ord("P")){
	paused = !paused;
	if paused == false{
		instance_activate_object(o_MC);
	}
}
if paused == true{
	instance_deactivate_object(o_MC);
}
#endregion pause
#region music
if room == title_screen && music = 0{
	music = 1;
	titlesound = audio_play_sound(titlemusic,10,true);;
	audio_sound_pitch(titlesound,petch)
}else if room == Training_stage && (music = 1 || (styxisbeaten = false && first = 0)){
	music = 0;
	first = 1;
	if styxisbeaten = true{
		audio_sound_gain(titlesound,0,1000)
	}
	styxmusic = audio_play_sound(styxbattle,10,true)
}else if room == Arkas_stage && music = 1{
	music = 0;
	audio_sound_gain(titlesound,0,1000)
	styxmusic = audio_play_sound(styxbattle,10,true)
}else if room == Sirius_stage && music = 1{
	music = 0;
	audio_sound_gain(titlesound,0,1000)
	styxmusic = audio_play_sound(styxbattle,10,true)
}else if room == Terra_stage && music = 1{
	music = 0;
	audio_sound_gain(titlesound,0,1000)
	styxmusic = audio_play_sound(styxbattle,10,true)
}else if room == Ada_stage && music = 1{
	music = 0
	audio_sound_gain(titlesound,0.5,1000)
	
	
}
if hp_temp != hp_ && instance_exists(o_MC){
	audio_play_sound(hitted,2,false)
}
if (sanity_ = 2500 || sanity_ = 1250) && sinata = 0 && instance_exists(o_MC){
	sinata = 1
	audio_play_sound(sanityfull,2,false)
}if sanity_ < 2500 && instance_exists(o_MC){
	sinata = 0;
}
hp_temp = hp_
#endregion music
#region reset/leave

if keyboard_check_pressed(vk_escape) && styxisbeaten = true && room != Ada_stage{
	if !(room = title_screen){
	room_goto(title_screen);
	}if !(room = title_screen || room = select_screen){
		audio_stop_all();
	}
	hp_ = 3;
	lives_ = 3;
	weapon_power = 0;
	sanity_ = 2500;
	
}
#endregion
#region save/load
#endregion
#region aidid
if instance_exists(o_cherubim){
	if o_cherubim.loginthought = false{
		ai_timer += 1/room_speed
		if ai_timer > 15{
			next_timer += 1/room_speed
		}
		if next_timer > 5{
			aipage += 1
			next_timer = 0
		}
		if aipage < aipagelength && ai_timer > 15{
			MYTHOUGHT_(aisequence,aipage)
		}else if aipage = aipagelength{
			window_set_caption("Para Indigo: Nirwana Pancarona")
			aisequence += 1
			aipage = 0
			ai_timer = 0
		}
	}
}
#endregion