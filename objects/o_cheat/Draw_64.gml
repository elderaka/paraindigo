/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_right);
if o_stats.godmode = true {
	if  !(o_stats.act >= 2){
	draw_text(room_width,40, "[1] Normal");
	draw_text(room_width,56, "[2] Spread");
	draw_text(room_width,72, "[3] Homing");
	draw_text(room_width,88, "[4] Laser");
	draw_text(room_width,104, "[5] Godmode");
	draw_text(room_width,120, "[6] Kurang power [7] Tambah power");
	}else{
		draw_text(room_width,40, "NULL");
	}
}
