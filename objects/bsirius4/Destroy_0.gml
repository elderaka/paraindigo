/// @description Insert description here
// You can write your code in this editor
if timer < ((360/150)+(360/90)+(360/60)){
	if image_index = 5{
	 effect_create_above(ef_ring,x,y,16,c_red)
	}
	if image_index = 3{
		 effect_create_above(ef_ring,x,y,16,c_orange)
	}
	if image_index = 2{
		 effect_create_above(ef_ring,x,y,16,c_yellow)
	}
	if image_index = 4{
		effect_create_above(ef_ring,x,y,16,c_purple)
	}
}