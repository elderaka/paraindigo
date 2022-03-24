/// @description Dia jalan make path
for(var i = 0; i < 40; i++){
			var l = instance_create_layer(x,y,"Bullets",bsirius1)
			l.direction = i*360/40
			l.image_angle = direction
			l.speed = 2
		}