/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 12; i++){
	g = instance_create_layer(x,y,"Bullets",bterra2b)
	g.direction = i*360/12 + random_range(0,360/12)
}
instance_destroy()
