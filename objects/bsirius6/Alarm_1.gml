/// @description Insert description here
// You can write your code in this editor
instance_destroy();
for(var i = 0; i < 8; i++){
	g = instance_create_layer(x,y,"Bullets",bsirius6b)
	g.direction = i*360/8
	g.speed = 2
}