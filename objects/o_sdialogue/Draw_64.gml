/// @description Insert description here
// You can write your code in this editor
draw_set_font(fn_dialogue);
draw_set_halign(fa_left);
#region dialogue battle
if (charcount < string_length(text)){
	charcount += 0.5
}
textpart = string_copy(text,1,charcount)
if room = title_screen{
	if instance_exists(o_ada){
		draw_sprite_stretched_ext(texttemplate,0,0,385,1400,674-385,c_white,1)
	}
	draw_sprite_stretched_ext(textborder,0,388,385,1011-388,674-385,c_white,alpa)
	draw_sprite_ext(spacebar_,image_index,934+32,617+17,1,1,0,c_white,alpa)
	

	if instance_exists(o_styx){
		draw_sprite_stretched(s_styxe,0,338+64,385+32,128,128)
		draw_text_ext(388+160,385+32,textpart,string_height(text),1011-548)
		if o_stats.styxisbeaten = false{
			if !((o_styx.phase >= 3.5 && o_styx.page == 2) || o_styx.phase > 3.5){
				draw_text_ext_color(388+16,385+128+64,name,string_height(text),1011-548,c_yellow,c_yellow,c_yellow,c_yellow,1);
			} else draw_text_ext_color(388+16,385+128+64,name + "?" ,string_height(text),1011-548,c_red,c_red,c_red,c_red,1);
		}else draw_text_ext_color(388+16,385+128+64,name,string_height(text),1011-548,c_yellow,c_yellow,c_yellow,c_yellow,1);
	}
	
}
#endregion dialogue battle
#region dialogue styx idle
#endregion dialogue styxe idle