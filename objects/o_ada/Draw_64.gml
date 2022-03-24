/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_MC){
draw_text(10,50, "Deathcount: " + string(o_stats.deathcount))
draw_text(10,100,"Darah     : " + string(o_stats.hp_))
draw_text(10,150,"Nyawa     : " + string(o_stats.lives_))
draw_text(10,200,"Graze     : " + string(global.graze_))
draw_set_halign(fa_right)
draw_text(room_width-10,50,"Max Darah: " + string(max_hp))
draw_text(room_width-10,100,"Darah: " + string(hp_))
draw_text(room_width-10,150,"Fase: " + string(phase))
draw_text(room_width-10,200,"Pola: " + string(pattern))
}