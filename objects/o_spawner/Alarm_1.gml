/// @description Power up
instance_create_layer(room_width/2, 0+16, "Bullets", choose(o_powerup, o_temporal, o_gravitas));
alarm[1] = random_range(room_speed*5, room_speed*10);