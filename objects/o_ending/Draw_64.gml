/// @description Insert description here
// You can write your code in this editor
draw_set_font(fn_ending1)
draw_set_halign(fa_center)
if instance_exists(o_stats){
		if fixedalpop = false{
			draw_sprite_ext(s_felovan,2,room_width/2,room_height/2-100,0.4,0.4,0,colors,alpop)
			draw_text_color(room_width/2,room_height/2,"Tamat",colors,colors,colors,colors,alpop)
		}else{
			draw_sprite_ext(s_felovan,2,room_width/2,room_height/2-100,0.4,0.4,0,colors,1)
			draw_text_color(room_width/2,room_height/2,"Tamat",colors,colors,colors,colors,1)
		}
		draw_set_font(fn_splash)
		draw_text_color(room_width/2,room_height/2 + 100,quotes[o_stats.endingroute],colors,colors,colors,colors,alpep)
		draw_text_color(room_width/2,room_height/2 + 120 + string_height(quotes[o_stats.endingroute]),"Ketik [L] untuk mengulang permainan",colors,colors,colors,colors,alpup)
}