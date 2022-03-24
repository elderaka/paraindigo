
#region cutscene
if ended = false{
	if page < 18{
		text = intro[page]
	}
	
	//Untuk efek typewriting
	if (charcount < string_length(text)) {
		charcount += 0.25
		if charcount mod 1.5 = 0 && skip = false{
			audio_play_sound(introblip,1,false)
		}
	}
	
	textpart = string_copy(text,1,charcount)
	
	//untuk skip dialog
	if (charcount = string_length(text)) && skip = false{
		timer += 1/room_speed
		if timer > 1 && page < 17{
			charcount = 0
			page += 1
			timer = 0
		}else if timer > 1 && page = 17{
			if skip = false{
				skip = true
			}	
		}
	}
	//buat skip intro
	if keyboard_check_pressed(vk_space){
		if skip = false{
			skip = true
		}
	}
	if skip = true{
		alpi -= 0.01
		
		if resettimer = false{
			resettimer = true
			audio_sound_gain(bgm,0,3000)
			timer = 0
		}
		timer += 1/room_speed
		if timer > 5{
			page = 0
		ended = true
		}
	}
}
#endregion
#region talking
if ended = true{
	timer += 1/room_speed
	if check = 0{
		check = 1
		timer = 0
		audio_resume_sound(river)
		audio_sound_gain(river,1,3000)
	}
	if check = 1 && timer >= 5{
		if dodialogue = false{
			dodialogue = true
			audio_resume_sound(monol)
			audio_sound_gain(monol,0.25,3000)
			instance_create_layer(x,y,"Instances",o_dialogue) //god, gw belom compile. semoga pertama compile berhasil amin
		}													  //edit 1	: surprise surprise, it didn't work
		if instance_exists(o_dialogue){						  //edit 2: oke lupa pake dodialogue biar cuman sekali doang
			monologue(0,page)
			if (keyboard_check_pressed(vk_space) && o_dialogue.charcount == string_length(o_dialogue.text)){
				page += 1;
			}
		}
		if page >= 8{
			if check = 1{
				timer = 0
				audio_sound_gain(monol,0,3000)
				instance_destroy(o_dialogue)
				audio_sound_gain(river,0,3000)
				check = 2
			}
		}	
	}
}
if timer > 5 && check = 2{
	instance_destroy()
}
#endregion