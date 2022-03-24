/// @description Draw Goeey lol
// You can write your code in this editor
draw_set_font(fn_dialogue);
draw_set_halign(fa_left);
if !(room = title_screen || room = select_screen || room = Ada_stage || room = splashscreen || room = ending_room ||room = intro_screen || room = our_room){
	draw_sprite_stretched(textborder,0,4,room_height/2-90,256,144+72)
	if weapon_power < 4{
		draw_text(16,room_height/2-54, "Kekuatan: " + string(weapon_power));
	}else{
		draw_text(16,room_height/2-54, "Kekuatan: MAKS!")
	}			
	if o_stats.unkillable = false{
		draw_text(16,room_height/2-18, "Darah: " + string(hp_))
	}else{
		draw_text(16,room_height/2-18, "Darah: NULL")
	}
	if o_stats.unkillable = false{
		draw_text(16,room_height/2+18, "Nyawa: " + string(lives_));
	}else{
		draw_text(16,room_height/2+18, "Nyawa: NULL");
	}
	draw_text(16,room_height/2+54, "Singgung: " + string(global.graze_));
	draw_text_color(12,room_height-32, string(fps),c_black,c_black,c_black,c_black,1)
}
//cek room
//draw_text(100,30,string(deathcount))
//sanity bar
