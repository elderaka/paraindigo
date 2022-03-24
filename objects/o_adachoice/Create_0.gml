/// @description Insert description here
// You can write your code in this editor
randomize();
posy = 0
check = 0
rightchoice = 0;
//Two kind of choice
if o_stats.deathcount = 0{
	lie = "Bantu Ada"
	truth = "Bantu Alice"
}else if o_stats.deathcount > 0{
	lie = "Mulai bantu Ada"
	truth = "Tetap bantu Alice"
}else if instance_exists(o_cherubim){
	lie = "Aku akan tetap disini"
	truth = "Terima kasih atas tawarannya"		
}
//length biar bisa kiri ato kanannya. So, dua dimensi.
option[0] = "null"
//yang kiri horizontal
//yang kanan vertikal
//buat generate pilihannya
choice = 0

borderwidth = 0
borderheight = 0
randomize()
if o_ada.stubborn < 4{
	v_length = 2;
}else if o_ada.stubborn < 6{
	v_length = 5;
}else if o_ada.stubborn < 9{
	v_length = 10;
}
for (var i = 0; i < v_length; i++){
		_c = c_white
		if o_ada.stubborn < 6{
		choice = round(random_range(1,v_length-2))	
		}else if o_ada.stubborn < 9{
			choice = round(random_range(1,v_length-4))		  //somehow my luck wouldn't let me get 10% attempt below 10
		}													  //SO EVERYONE IS GOING DOWN WITH MEEEEE
		
		if rightchoice = 0 && choice = 1{					  //Jika belum ada rightchoice, maka dibikin
			option[i] = truth             
			rightchoice = 1
		}else if rightchoice = 0 && i == v_length - 1{		  //Jika sudah terakhir tapi lom ada rightchoice, bikin
			option[i] = truth             
			rightchoice = 1
		}else {option[i] = lie} 							  //Selain itu pilihan obselet
	}
	
//Semua ini belom ditest sekalipun. Semoga gak berantakan2 banget lah
//Edit 1: NGODING SEBANYAK INI DAN GADA SATUPUN COMPILE ERROR? AM I DREAMING?
//Edit 2: Everything is working except UI, well damn that's freaking unexpected
//Edit 3: I spoke too soon
//Edit 4: Took me another 4 hours to fix shits up