/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_font(fn_title);
if usingcredit = false{
for (var i = 0; i < op_length; i++){
	var _c = c_white;
	if pos == i { _c = c_yellow};
	draw_text_color(room_width/2, room_height/2 - 166 - 64 + i*128, option[menu_level, i], _c, _c, _c, _c, 1);
}
}