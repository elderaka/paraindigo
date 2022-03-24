/// @description Insert description here
// You can write your code in this editor
draw_set_font(fn_dialogue);
draw_set_halign(fa_left);
charcount = clamp(charcount,0,string_length(text))
#region dialogue battle
if (charcount < string_length(text)) && !instance_exists(o_intro) && adding{
	adding = false
	alarm[2] = typingspeed
	
	if charcount mod soundrate = 0 && !(room = title_screen){
		audio_play_sound(introblip,1,false)
	}
}else if (charcount < string_length(text)) && instance_exists(o_intro){
	if instance_exists(o_ada){
		if o_ada.page > 30{
			charcount += 0.125
		}
	}else{
		charcount += 0.25
	}
	if charcount mod 2 = 0 && !(room = title_screen){
		audio_play_sound(introblip,1,false)
	}
}
textpart = string_copy(text,1,charcount)
if room != title_screen{
	if instance_exists(o_ada){
		draw_sprite_stretched_ext(texttemplate,0,0,385,1400,674-385,c_white,1)
	}
	draw_sprite_stretched_ext(textborder,0,388,385,1011-388,674-385,c_white,alpa)
	draw_sprite_ext(spacebar_,image_index,934+32,617+17,1,1,0,c_white,alpa)
	
	//So uh, gw terlalu males buat rombak ulang. Jadi biarin gini aja deh
	if instance_exists(o_styx){
		draw_set_valign(fa_top)
		draw_set_font(fn_dialoguenew);
		draw_sprite_stretched(davatar,sprite,338+64,385+32,128,128)
		draw_text_ext_color(388+160,385+32,textpart,string_height(text),1011-548,textcolour,textcolour,textcolour,textcolour,1);
		draw_text_ext_color(388+16,385+128+64,name,string_height(text),1011-548,c_yellow,c_yellow,c_yellow,c_yellow,1);
		if o_stats.styxisbeaten = false{
			if !((o_styx.phase >= 3.5 && o_styx.page == 2) || o_styx.phase > 3.5){
				draw_text_ext_color(388+16,385+128+64,name,string_height(text),1011-548,c_yellow,c_yellow,c_yellow,c_yellow,1);
			} else draw_text_ext_color(388+16,385+128+64,name + "?" ,string_height(text),1011-548,c_red,c_red,c_red,c_red,1);
		}else draw_text_ext_color(388+16,385+128+64,name,string_height(text),1011-548,c_yellow,c_yellow,c_yellow,c_yellow,1);
	}
	else if instance_exists(o_ada) && o_stats.firstbeaten = false{
		if alpa != 0 {sep = 1011-547}
		else if alpa = 0 {sep = 1400}
		draw_sprite_stretched_ext(s_ada,0,338+64,385+32,128,128,c_white,alpa)
		if o_ada.page < 31{
		draw_text_ext_color(388+160,385+32,textpart,string_height(textpart),1011-547,c_white,c_white,c_white,c_white,alpa);
		}
		draw_text_ext_color(388+64,385+128+64,name,string_height(textpart),1011-548,c_red,c_red,c_red,c_red,alpa);
		if o_ada.page > 30{
			draw_set_halign(fa_center)
			if o_ada.page > 30 && alpa = 0{
			draw_text_ext_color(room_width/2,385+32,textpart,string_height(textpart),1011-547,c_white,c_white,c_white,c_white,alpi);
			}
		}
	}else {
		draw_set_valign(fa_top)
		draw_set_font(fn_dialoguenew);
		draw_sprite_stretched(davatar,sprite,338+64,385+32,128,128)
		draw_text_ext_color(388+160,385+32,textpart,string_height(text),1011-548,textcolour,textcolour,textcolour,textcolour,1);
		draw_text_ext_color(388+16,385+128+64,name,string_height(text),1011-548,c_yellow,c_yellow,c_yellow,c_yellow,1);
	}
	
	
}
#endregion dialogue battle