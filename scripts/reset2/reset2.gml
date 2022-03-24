//If i rest, should I?
//I'm an Idiot. Of course I should
if instance_exists(o_stats){
o_stats.styxisbeaten = 1
o_stats.arkasisbeaten = 1
o_stats.terraisbeaten = 1
o_stats.arkasisbeaten2 = 1
o_stats.siriusisbeaten = 1
o_stats.siriusisbeaten2 = 1
o_stats.bossbeaten = 3
o_stats.hasdoneintro = true
o_stats.lives_ = 3
o_stats.hp_ = 3
o_stats.sanity_ = 2500
o_stats.weapon_power = 0
o_stats.firsttime = false
o_stats.firsttime2 = true
o_stats.firstbeaten = true
o_stats.act = 2
o_stats.deathcount = 0
o_stats.endingroute = 1
o_stats.athoughtcount = 0
o_stats.runaway = 0
if instance_exists(o_cherubim){
	o_cherubim.firstinsert = true
}
game_restart()
}