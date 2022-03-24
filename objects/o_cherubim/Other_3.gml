/// @description Insert description here
// You can write your code in this editor
if thoughtcount > 0{
	o_stats.runaway += 1
}
o_stats.runaway = clamp(o_stats.runaway,0,1)