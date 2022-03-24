/// @description Insert description here
// You can write your code in this editor
if timingadd = true{
	timing += 1/room_speed
}
if instance_exists(o_ada){
	if o_ada.page = 30 && timing = 1{
			timingadd = false
			o_ada.page += 1
			charcount = 0
	}
	if alpa = 0 && sekip = false{
		sekip = true
		timingadd = true
		
	}
	if keyboard_check_pressed(vk_space) && (alpa = 1 || alpa = 0){ //dialog kek gini gak efektic bet, harusnya dari awal gw bikin aja pagenya disini. too bad
		if (charcount < string_length(text)) && o_ada.page < 31{
			charcount = string_length(text)	
		}else if(charcount = string_length(text)){
			if o_ada.page = 43{
				bisa = false
				alarm[1] = 60
			}
			if o_ada.page = 30{
				fading = true
			}else if bisa || o_ada.page != 43{
				charcount = 0
			}
		}
	}
}else 
if keyboard_check_pressed(vk_space) && (alpa = 1 || alpa = 0){
	if (charcount < string_length(text)){
		charcount = string_length(text)	
	}else if(charcount = string_length(text)){
		charcount = 0
	}
}
if fading{
	alpa -= 0.01
	timer -= 0.02
	timer = clamp(timer,0,1)
	alpa = clamp(alpa,0,1)
	o_graze.image_alpha = 0
	o_magicnormal.image_alpha = 0
}
if feding{
	alpi -= 0.01
	plis -= 1/180
	audio_master_gain(plis)
}