if o_stats.hp_ <= 0 {
	instance_destroy();
}
if o_stats.unkillable{
	can_hurt = false
}

if (o_stats.sanity_ < o_stats.max_sanity){
	o_stats.sanity_ += (2500/30)/room_speed;
} o_stats.sanity_ = clamp(o_stats.sanity_,0,o_stats.max_sanity)

x = clamp(x, 8, room_width-8); //batasin/clamp
y = clamp(y, 8, 960-8); //tinggi dikurang setengah sprite
#region kontrol
//Kontrol
var up, down, left, right, leave, diag, h_move, v_move, skill_;
	
	leave = keyboard_check(ord("L"));
	up =	 keyboard_check(ord("W"))|| keyboard_check(vk_up); //sekarang gw tau kenapa game kebanyakan wasd...
	down =	 keyboard_check(ord("S"))|| keyboard_check(vk_down); //arrow key gampang bet ghosting anyg
	left =	 keyboard_check(ord("A"))|| keyboard_check(vk_left);
	right =	 keyboard_check(ord("D"))|| keyboard_check(vk_right);
	skill_ =  keyboard_check_pressed(ord("F"));
	shoot =	 keyboard_check(vk_space);
	graze =  keyboard_check(vk_shift);
	h_move = right-left;
	v_move = down - up;
	diag = (up or down) and (left or right);
#endregion kontrol
//Reset dan Keluar

if leave {
	//game_end();
}
	
//Pause ketika dialogue box muncul atau intro
if instance_exists(o_styx){
	if o_styx.phase == 0{
		exit;
	}
}
if instance_exists(o_arkas){
	if o_arkas.phase == 0{
		exit;
	}
}if instance_exists(o_sirius){
	if o_sirius.phase == 0{
		exit;
	}
}
if instance_exists(o_terra){
	if o_terra.phase == 0{
		exit;
	}
}
if instance_exists(o_ada){
	if o_ada.phase == 0{
		exit;
	}
}
if instance_exists(o_dialogue){
	exit;
}
#region movement
if h_move != 0 {
	hspeed_ += h_move * o_stats.accel_;
	hspeed_ = clamp(hspeed_, -o_stats.max_speed, o_stats.max_speed); //ini buat ngelock value
} else {
	hspeed_ = lerp(hspeed_, 0, o_stats.friction_); //dunno tf does this mean, tpi intinya ganti value jdi 0, sebanyak friction
}
if v_move != 0 {
	vspeed_ += v_move * o_stats.accel_;
	vspeed_ = clamp(vspeed_, -o_stats.max_speed, o_stats.max_speed)
} else {
	vspeed_ = lerp(vspeed_, 0, o_stats.friction_);
}
diagspeed_ = 1; //if it works, it works. Edit 2: Ternyata trigonometri dasar, damn. Edit 3: 1 aja udh betul tpi tkut yodh situ ae

if diag{
	hspeed_ *= diagspeed_;
	vspeed_ *= diagspeed_;
} else {
	o_stats.max_speed = o_stats.original_speed;
}
if graze {
	o_stats.max_speed = 3;
	if image_alpha > 0.2{
		image_alpha -= 0.1;
	}
}
if graze = false{
	if image_alpha < 1{
		image_alpha += 0.1;
	}
}
x += hspeed_;
y += vspeed_;	
#endregion movement
#region attack code
//ini pas tembak2nya
if nembak == true {
	if shoot {
		bullet(bullet_type);
		audio_play_sound(shoot_sound,1,false)
		nembak = false;
		alarm[0] = o_stats.firerate; //bismillah belajar alarm lgi
	}
}
//ini pas ngebom
//oke sebentar, jadi sanitynya itu total 2500
//nah terus gw pengen normal = 5 detik, spread = 3 detik, homing max 4*, laser 3 detik
//untuk masing2 skill: 
//normal: 5 detik spread, 5 detik 360, dan makan 100% sanity
//spread: 4 detik time slow, 3 detik time stop, makan 100% sanity, tapi bisa jadi 9 detik time slow
//homing: masing2 proyektil 750 sanity, tapi bisa diperbesar ampe setengah ruangan
//laser: teken itu makan 500 sanity, tapi kalo ditahan 3 detik jdi clear screen, makan 80% sanity
//maka, 2000 = 0 + 1/2a6000; a = 40/s, 

//untuk summon skill circle
//untuk ngeskill
//OKEY JADI INI ITU RUMUS V = AT, TAPI JADI V += 1 * AT KARENA T = ROOM_SPEED
//INI RUMUS S = 1/2AT^2
//DI SCRIPT SKILL NTAR TINGGAL MIKIRIN BOMB + SANITY COSTNYA
//LITERALLY MY RL SANITY IS DRAINED
//PLIS
/*if sekil == true{*/

//ARGGGGGGGGHHHHHHHHHHHHHHHHHHH
if skill_{
	if bullet_type == "normal"{
		if (o_stats.sanity_ > 1250){
			skill(bullet_type);
			audio_play_sound(bomb,1,false)
			o_stats.sanity_ -= o_stats.skill_cost;
		}		
	}
} //10 GODDAMN HOURS, I'M FOKEN INSANE
if keyboard_check_released(ord("F")){
	o_stats.skill_cost = 1;
}
if o_stats.sanity_ < o_stats.skill_cost {
	o_stats.skill_cost = 1;
	skill_timer = 0;
}
#endregion atk code	


