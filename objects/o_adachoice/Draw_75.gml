draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fn_dialogue);
//Ukuran pilihannya
borderwidth = string_width(truth) + 100
borderheight = string_height(truth) + 20
//Jadi, mungkin ada 2 cara untuk bikin "randomize"
//First, brute force jadi gausah di random
//Second, cari cara gimana biar bisa atleast guaranteed ada choice bener di pilihannya
//For note, gw tau kalo udah ada dokumentasinya di internet sana about this kind of thing
//But, for practice I'll try to find it out by myself.



if o_ada.stubborn < 6{
	for (var i = 0; i < v_length; i++){
		_c = c_white
		if posy == i {
			_c = c_yellow
		};
		draw_sprite_stretched_ext(textborder,0,room_width/2-borderwidth/2, room_height/3-(v_length*borderheight)+(i*borderheight+40) + i*40,borderwidth,borderheight,c_white,1)
		draw_sprite_stretched_ext(textborderer,0,room_width/2-borderwidth/2, room_height/3-(v_length*borderheight)+(i*borderheight+40) + i*40,borderwidth,borderheight,_c,1)
		draw_text_color(room_width/2, room_height/3-(v_length*borderheight-20)+(i*borderheight+40) + i*40, option[i], _c, _c, _c, _c, 1);
		
	}
}else if o_ada.stubborn < 9{
	for (var i = 0; i < v_length; i++){
		_c = c_white
		if posy == i {
			_c = c_yellow
		};
		draw_sprite_stretched_ext(textborder,0,room_width/2-borderwidth/2, room_height/2-(v_length*borderheight)+(i*borderheight+40) + i*40,borderwidth,borderheight,c_white,1)
		draw_sprite_stretched_ext(textborderer,0,room_width/2-borderwidth/2, room_height/2-(v_length*borderheight)+(i*borderheight+40) + i*40,borderwidth,borderheight,_c,1)
		draw_text_color(room_width/2, room_height/2-(v_length*borderheight-20)+(i*borderheight+40) + i*40, option[i], _c, _c, _c, _c, 1);
		
	}
}else if o_ada.stubborn = 7{
	
}