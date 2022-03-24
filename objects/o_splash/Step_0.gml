/// @description Insert description here
// You can write your code in this editor

if o_stats.act = 2 || (o_stats.act = 5 && o_stats.endingroute > 5){
	if alpap = 1{
		rising = false				   //THERE IS LITERALLY A BETTER WAY OF DOING THIS
	}								   //BUT THE CODE IS TOO FUCKED UP FOR ME TO DO ANYTHING
}
if ngurang = false && setop = false{
	
	if o_stats.terraisbeaten = false{
		persen = random_range(0,100);      //Y'know what, tdi gw kira kenapa gak random banget
	}else{
		persen = random_range(0,50);
	}									   //Ternyata seednya harus di randomize
		eggs = random_range(0,9);		   //But oh well, kodenya tarok sini aja deh
	if instance_exists(o_stats){
		if o_stats.act = 2{
			afterada = ada1[0]
		}if o_stats.runaway > 0{
			afterada = run[random_range(0,3)]
		}else if o_stats.deathcount >0{
			afterada = ada[random_range(0,13)]
		}
		if o_stats.act = 2.5{
			afterada = peace[random_range(0,12)]
		}
		if o_stats.endingroute = 4{
			afterada = betray[0]
		}
	}
	if rising = true{
		alpap += 0.02
	}
	alpop += 0.02
}else if ngurang = true{
	if instance_exists(o_stats){
		if o_stats.act = 2{
			alpap -= 0.02
		}
	}
	alpop -= 0.02
}
if ngurangg = true{
	alpap -= 0.02
	alpip -= 0.04
	ready = true
}
alpap = clamp(alpap,-1,1)	  //pentingnya ngasih komen setiap logic
alpop = clamp(alpop,-1,1)	  //GW LUPA YG MANA BUAT FADE OUT SCREEN PUTIH
alpip = clamp(alpip,-5,1)	  //WHERE TF KODE BUAT FADE OUTNYA  AAA
if timerngurang = true{
	timer += 1/room_speed
}
if timer = 1.5{
	timerngurang = false
	ngurang = true
}
if timer = 3.5 + ((1/0.02)/room_speed){
	timerngurang = false				  //bener2 berantakan
	ngurangg = true						  //damn
}										  //tapi males beresinnya ehe
if alpap >= 1 || (alpap <= 0 && rising = false){
	setop = true
	if alpop <= 0{
		forwhat = false					  //INI LEBIH DARI BERANTAKAN
	}									  //GOD BLESS BUAT SIAPAPUN YG PENGEN TAU INI NGAPAIN
	if forwhat = true{
		timerngurang = true				  //LITERALLY THE WORST BATCH OF CODE RN
	}
	if forwhat = false {				  //OKE KETEMU, JADI BUAT PHASE 2 NTAR
		disukureima = true                //GOSAH DI FADE IN LAGI	
		alpip += 0.02					  //WHERE TF KODE BUAT NAIKIN ALPAP FOR SECOND TIME
	}
	if alpip >= 1 {						  //AHHHH INI KODE SEBENERNYA GATAU KENAPA GW MASUKIN
		timerngurang = true				  //TPI TAKUT KLO W DELETE G BAKAL LOAD
	}
}
//biar misalnya kalo pertama kali boot liat cutscene dlu
if instance_exists(o_stats) && ready = true{
	if alpip <= -2 && o_stats.act = 2{
		room_goto(Ada_stage)
	}else if alpip <= -2 && o_stats.act = 1{
		room_goto(title_screen)
	}else if alpip <= -2 && o_stats.hasdoneintro = false{
		room_goto(intro_screen)
	}else if alpip <= -3 && o_stats.act = 0{
		room_goto(Training_stage)
	}else if alpip <= -2 && o_stats.act = 2.5{
		room_goto(our_room)
	}else if alpip <= -2 && o_stats.act = 5{
		room_goto(ending_room)
	}
}

layer_background_alpha(layer_background_get_id("Background"),alpap)
if o_stats.act = 5 && alpap = 1{
	layer_background_alpha(layer_background_get_id("Background"),fixedalpap)
}