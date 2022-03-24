/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height);
draw_sprite_stretched(sanitybar_border,0,56,25,1343-56,64-25);
if phase = 1{
	skillname = "Gravitasi - Perangkap Bintang yang Akan Mati"
}else if phase = 2{
	skillname = "Gravitasi - Ledakan Supernova yang Mengawali Semesta"
}else if phase = 3{
	skillname = "Gravitasi - Cahaya Ilahi yang Menghidupkan Semesta"
}else if phase = 4{
	skillname = "Gravitasi - Gelombang Magnetik yang Menjelajahi Semesta"
}else if phase = 5{
	skillname = "Kreationis - Bintang Sirius"
}
	draw_set_halign(fa_left);
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
	}if phase == 4{
		draw_sprite_stretched(textborder,0,healthbar_x-16,healthbar_y+54,string_width(" " + skillname + " "),string_height(skillname) +16)
	draw_text(healthbar_x,healthbar_y+64, skillname)
	draw_sprite_stretched_ext(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height,c_green,1);
	}if phase == 5{
		draw_sprite_stretched(textborder,0,healthbar_x-16,healthbar_y+54,string_width(" " + skillname + " "),string_height(skillname) +16)
	draw_text(healthbar_x,healthbar_y+64, skillname)
	draw_sprite_stretched_ext(bossbar_,0,healthbar_x,healthbar_y,(hp_/max_hp) *healthbar_width,healthbar_height,c_green,1);
	}
draw_set_halign(fa_left)
draw_set_font(fn_dialogue)