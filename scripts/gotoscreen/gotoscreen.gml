												

if instance_exists(o_stats){
o_stats.hp_ = 3
o_stats.lives_ = 3
o_stats.weapon_power = 0
o_stats.sanity_ = 2500
global.graze = 0
simpan()
room_goto(title_screen)
audio_stop_all()
}