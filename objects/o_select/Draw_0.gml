draw_set_halign(fa_center);
draw_set_font(fn_title);
//INGAT, TIDAK DISAMAKAN DENGAN o_title KARENA YANG INI ADALAH UNTUK MEMILIH STAGE DAN WEAPON
for (var i = 0; i < op_length; i++){
	if (i = 0 && o_stats.arkasisbeaten = false) || (i = 1 && o_stats.siriusisbeaten = false) || (i = 2 && o_stats.terraisbeaten = false){
	var _c = c_white;
	} else if (i = 0 && o_stats.arkasisbeaten != false) || (i = 1 && o_stats.siriusisbeaten != false) || (i = 2 && o_stats.terraisbeaten != false){
	var _c = c_green
	}if (i = 0 && o_stats.arkasisbeaten2 != false) || (i = 1 && o_stats.siriusisbeaten2 != false) || (i = 2 && o_stats.terraisbeaten != false){
	var _c = c_red
	}if pos == i { 
		_c = c_yellow
	}
	if !(i = 2 && o_stats.terraisbeaten){
		var _o = c_white
	}else{_o = c_red}
	draw_set_font(fn_title);
	draw_sprite_stretched_ext(textborder,0,room_width/2 - 550 + i*400 - 32, room_height/3-200,350,room_height/3+200,_o,1)
	draw_sprite_stretched_ext(textborderer,0,room_width/2 - 550 + i*400 - 32, room_height/3-200,350,room_height/3+200,_c,1)
	draw_text_color(room_width/2 - 400 + i*400, 2*room_height/3, option[menu_level, i], _c, _c, _c, _c, 1);
	draw_set_font(fn_dialogue)
	draw_text_ext_color(room_width/2 - 410 + i*400, room_height/3 + 50, desc[i],24,350, _c,_c,_c,_c,1);
	
}