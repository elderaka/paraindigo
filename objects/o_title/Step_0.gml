/// @description Insert description here
// You can write your code in this editor
//Input
up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) ;
down = keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("S"));
enter = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
back = keyboard_check_pressed(vk_escape);

//taruh berapa opsi di menu
op_length = array_length(option[menu_level]);

//Jalan di menu
pos += down - up;
if pos >= op_length { pos = 0};
if pos < 0 { pos = op_length - 1};
if usingcredit = true{
	if keyboard_check_pressed(vk_anykey){
		usingcredit = false;
		layer_set_visible(kre, false)
	}
}
//Pake optionnya
if usingcredit = false{
var lay_ = layer_get_id("Tutorial");
if enter {
	var _sml = menu_level;
	switch(menu_level){
		//Menu
		case 0:
			switch(pos){
				case 0:
				if o_stats.styxisbeaten = false{
					room_goto(Training_stage)
				}else room_goto(select_screen);
					break;
				case 1:
					room_goto(Training_stage);
					break;
				case 2:
					usingcredit = true
					layer_set_visible(kre,true);
					break;
				case 3:
					game_end();
					break;					
				}
		//Tutorial
		case 1:
			switch(pos){
				case 0:
				menu_level = 0;
				layer_set_visible(lay_, false);
				break;
			}
	}
	if _sml != menu_level {pos = 0};
	//koreksi op_length
	op_length = array_length(option[menu_level]);
}
}