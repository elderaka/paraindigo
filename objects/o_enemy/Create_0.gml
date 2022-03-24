/// @description Darahnya
alarm[1] = random_range(room_speed*1, room_speed*3);
global.enemies_created += 1;
image_speed = 0;
image_index = 0;

path_start(choose(Path1,Path12,Path3,Path34), 2, path_action_stop, true);
