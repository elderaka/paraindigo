/// @description Insert description here
// You can write your code in this editor
draw_set_font(fn_splash)
draw_set_halign(fa_center)
if forwhat = true{
	if logopersen >5 && (o_stats.act < 2 || o_stats.act = 5){
		draw_sprite_ext(s_felovan,4,room_width/2,room_height/2,1,1,0,c_white,alpop)
		draw_text_color(room_width/2,room_height/2-225,foronly,c_black,c_black,c_black,c_black,alpop)
		draw_text_color(room_width/2,room_height/2+125,by,c_black,c_black,c_black,c_black,alpop)
	}else{
		draw_sprite_ext(s_felovan,4,room_width/2,room_height/2,1,1,0,c_white,alpop)
		draw_sprite_ext(s_felovan,1,room_width/2,room_height/2+25,1.5,1.5,0,c_white,alpop*0.1)
		draw_text_color(room_width/2,room_height/2-225,foronly,c_black,c_black,c_black,c_black,alpop)
		draw_text_color(room_width/2,room_height/2+125,by,c_black,c_black,c_black,c_black,alpop)
	}
}
if disukureima = true && (o_stats.act < 2 || o_stats.act = 5){
	if persen >=10{
		draw_text_color(room_width/2,room_height/2-100,disclaimer,c_black,c_black,c_black,c_black,alpip)
	}else{
		draw_text_color(room_width/2,room_height/2-100,egg[eggs],c_black,c_black,c_black,c_black,alpip)
	}
}else if disukureima = true && o_stats.act = 2{
	var color = c_white
	if o_stats.deathcount > 10{
		color = c_red
	}
	draw_set_valign(fa_center)
	draw_text_color(room_width/2,room_height/2-50,afterada,color,color,color,color,alpip)
}else if disukureima = true && o_stats.act = 2.5{
	draw_set_valign(fa_center)
	draw_text_color(room_width/2,room_height/2-100,afterada,c_black,c_black,c_black,c_black,alpip)
}