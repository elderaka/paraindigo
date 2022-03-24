/// @description Insert description here
// You can write your code in this editor
//Input
up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
left = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);;
enter = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
back = keyboard_check_pressed(vk_escape);
if check = 0{
	check =	1
	alarm[1] = 20
}
//taruh berapa opsi di menu
op_length = array_length(option[menu_level]);

//Jalan di select
pos += left - right;
if pos >= op_length { pos = 0};
if pos < 0 { pos = op_length - 1};

//Jalan di stage/weapon
pos += left - right;
if pos >= op_length { pos = 0};
if pos < 0 { pos = op_length - 1};
if o_stats.terraisbeaten = true{
	option[0,2] = "NULL"
}if o_stats.arkasisbeaten2 && o_stats.siriusisbeaten2 && o_stats.terraisbeaten{
	if instance_exists(c_arkas){
	instance_destroy(c_arkas)
	}
	if instance_exists(c_sirius){
		instance_destroy(c_sirius)
	}
	layer_background_visible(suswp,true)
	option[0,0] = "???"
	option[0,1] = "???"
	option[0,2] = "???"
}
//Pake optionnya
if enter {
	var _sml = menu_level;
	switch(menu_level){
		//milih stage
		case 0:
			switch(pos){
				case 0:
					if o_stats.arkasisbeaten2 = false{
					room_goto(Arkas_stage)}
					break;
				case 1:
					if o_stats.siriusisbeaten2 = false{
					room_goto(Sirius_stage)}
					break;
				case 2:
					if o_stats.terraisbeaten != true{
						room_goto(Terra_stage);
					}
					if o_stats.arkasisbeaten2 && o_stats.siriusisbeaten2 && o_stats.terraisbeaten{
						room_goto(Ada_stage);
					}
					break;					
			}
		break;
		//milih weapon
		case 1:
			switch(pos){
				case 0:
					o_MC.bullet_type("normal")
					break;
				case 1:
					o_MC.bullet_type("spread")
					break;
				case 2:
					o_MC.bullet_type("homing")
					break;
				case 3:
					o_MC.bullet_type("laser")
					break;
			}
		break;
	}
	if _sml != menu_level {pos = 0};
	//koreksi op_length
	op_length = array_length(option[menu_level]);
}