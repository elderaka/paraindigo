/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height);
draw_sprite_stretched(sanitybar_border,0,56,25,1343-56,64-25);
//draw_text(healthbar_x,healthbar_y+64, string(phase))
//draw_text(healthbar_x,healthbar_y+128, "phase : " + string(phase))
//draw_text(healthbar_x,healthbar_y+160, "max hp " + string(array_length_2d(dialogue,1)))
if phase = 1{
	skillname ="Hal - Polyethylene Ber-Masa-Molekul-Sangat-Tinggi"
}else if phase = 2{
	skillname ="Hal - Azidoazide Azide"
}else if phase = 3{
	skillname ="Hal - Antimateri"
}else if phase = 4{
	skillname ="Hal - Chlotozoa Tungstenozoid"
}
draw_set_halign(fa_left)
draw_set_font(fn_dialogue)
	if phase == 1 && o_terra.hp_ > o_terra.max_hp/2{
		draw_sprite_stretched(textborder,0,healthbar_x-16,healthbar_y+54,string_width(" " + skillname + " "),string_height(skillname) +16)
	draw_text_color(healthbar_x,healthbar_y+64, skillname,c_purple,c_purple,c_purple,c_purple,1)
	draw_sprite_stretched_ext(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height,c_green,1);
	}if phase == 1 && o_terra.hp_ < o_terra.max_hp/2{
		draw_sprite_stretched(textborder,0,healthbar_x-16,healthbar_y+54,string_width(" " + skillname + " "),string_height(skillname) +16)
	draw_text_color(healthbar_x,healthbar_y+64, skillname,c_red,c_red,c_red,c_red,1)
	draw_sprite_stretched_ext(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height,c_green,1);
	}if phase == 2{
		draw_sprite_stretched(textborder,0,healthbar_x-16,healthbar_y+54,string_width(" " + skillname + " "),string_height(skillname) +16)
	draw_text(healthbar_x,healthbar_y+64, skillname)
	draw_sprite_stretched_ext(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height,c_green,1);
	}if phase == 3{
		draw_sprite_stretched(textborder,0,healthbar_x-16,healthbar_y+54,string_width(" " + skillname + " "),string_height(skillname) +16)
	draw_text(healthbar_x,healthbar_y+64, skillname)
	draw_sprite_stretched_ext(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height,c_green,1);
	}if phase == 4{
		draw_sprite_stretched(textborder,0,healthbar_x-16,healthbar_y+54,string_width(" " + skillname + " "),string_height(skillname) +16)
	draw_text(healthbar_x,healthbar_y+64, skillname)
	draw_sprite_stretched_ext(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height,c_green,1);
	}if phase == 5{
		draw_sprite_stretched(textborder,0,healthbar_x-16,healthbar_y+54,string_width(" " + skillname + " "),string_height(skillname) +16)
	draw_text(healthbar_x,healthbar_y+64,skillname)
	draw_sprite_stretched_ext(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height,c_green,1);
	}