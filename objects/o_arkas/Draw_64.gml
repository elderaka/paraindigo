/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched_ext(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height,c_lime,1);
draw_sprite_stretched(sanitybar_border,0,56,25,1343-56,64-25);
//draw_text(healthbar_x,healthbar_y+128, "ammo: " + string(ammo_))	
if phase == 1{
	skillname = "Waktu - Akselerasi Jam"
}else if phase == 2{
	skillname = "Waktu - Distorsi Jam"
}else if phase == 3{
	skillname = "Ruang - Distorsi Cakrawala"
}else if phase == 5{
	skillname = "Ruang dan Waktu - Manipulasi Tali Waktu"
}

if useskill = 1{
	if phase == 1{
		draw_sprite_stretched(textborder,0,healthbar_x-16,healthbar_y+54,string_width(" " + skillname + " "),string_height(skillname) +16)
	draw_text(healthbar_x,healthbar_y+64, skillname)
	draw_sprite_stretched_ext(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height,c_green,1);
	}if phase == 2{
		draw_sprite_stretched(textborder,0,healthbar_x-16,healthbar_y+54,string_width(" " + skillname + " "),string_height(skillname) +16)
	draw_text(healthbar_x,healthbar_y+64, skillname)
	draw_sprite_stretched_ext(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height,c_green,1);
	}if phase == 3{
		draw_sprite_stretched(textborder,0,healthbar_x-16,healthbar_y+54,string_width(" " + skillname + " "),string_height(skillname) +16)
	draw_text(healthbar_x,healthbar_y+64, skillname)
	draw_sprite_stretched_ext(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height,c_green,1);
	}if phase == 5{
		draw_sprite_stretched(textborder,0,healthbar_x-16,healthbar_y+54,string_width(" " + skillname + " "),string_height(skillname) +16)
	draw_text_color(healthbar_x,healthbar_y+64, skillname, c_red, c_red,c_red,c_red,1)
	draw_sprite_stretched_ext(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height,c_green,1);
	}
}else if useskill = 0{
	if phase == 5{
		draw_sprite_stretched(textborder,0,healthbar_x-16,healthbar_y+54,string_width(" " + skillname + " "),string_height(skillname) +16)
		draw_text_color(healthbar_x,healthbar_y+64, skillname, c_white, c_white,c_white,c_white,1)
	}
}
//draw_text(healthbar_x,healthbar_y+160, "max hp " + string(useskill))
draw_set_halign(fa_left)
draw_set_font(fn_dialogue)