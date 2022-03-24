//If i rest, should I?
//I'm an Idiot. Of course I should
if instance_exists(o_stats){
	instance_destroy(o_stats)
	instance_create_layer(x,y,"Instances",o_stats)
//o_stats.styxisbeaten = 0
//o_stats.arkasisbeaten = 0
//o_stats.terraisbeaten = 0
//o_stats.arkasisbeaten2 = 0
//o_stats.siriusisbeaten = 0
//o_stats.siriusisbeaten2 = 0
//o_stats.bossbeaten = 0
//o_stats.lives_ = 3
//o_stats.hp_ = 3
//o_stats.sanity_ = 2500
//o_stats.weapon_power = 0
//o_stats.firsttime = true
//o_stats.firsttime2 = true
//o_stats.firstbeaten = false
//o_stats.deathcount = 0
//o_stats.runaway = 0
//o_stats.act = 0
//o_stats.endingroute = 0
game_restart()
}