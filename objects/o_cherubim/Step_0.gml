boss_timer += 1/room_speed
image_angle += 0.05
o_stats.firsttime2 = false	
if o_stats.athoughtcount = 14 || o_stats.athoughtcount = 15{
	o_cheat.canusegodmode = false
}else{
	o_cheat.canusegodmode = true
}

if boss_timer = 1 && (thoughtcount = 0 || loginthought = true){
	ihavethought = true;
}

if thoughtcount > 0 && dowarning = false{
	thought_timer += 1/room_speed
}
if thought_timer > nextthought{
	ihavethought = true
}
if loginthought = true && o_stats.	runaway = 0{
	thoughtcount = 0
	o_stats.athoughtcount = 0
}
if loginthought = false{
	athought_timer += 1/room_speed
}

//kode apa ini
#region my thoughts
if o_stats.godmode = true{
	if o_stats.athoughtcount < 15{
		loginthought = false
		if dodialog == true{
		instance_destroy(o_dialogue);
		page = 0	
		dodialog = false
	}
		if dowarning == false{
		instance_create_layer(x,y,"Instances",o_dialogue);
		dowarning = true
		
		o_dialogue.skipable = false
		o_dialogue.nextpage = false
		
	}
		if page < pagelength{
		mythought(999 + betraywarning,page)
		if o_dialogue.charcount == string_length(dialogue[999 + betraywarning,page]){
			skip_timer += 1/room_speed
		}
		if skip_timer >= 1{
			page += 1;
			skip_timer = 0;
		}
	}else if page = pagelength{
			if betraywarning <= 4{
			instance_destroy(o_dialogue);
			betraywarning += 1;
			o_stats.godmode = false;
			ihavethought = false;
			dodialog = false;
			dowarning = false;
			thought_timer = 0;
			page = 0;
			if betraywarning = 4{
				instance_destroy(o_dialogue);
				o_stats.runaway = 0
				o_stats.endingroute = 4
				o_stats.act = 2
				game_restart()
			}
		}
		}
	}
	else{
		forgiven = true
		if dodialog == true{
		instance_destroy(o_dialogue);
		page = 0	
		dodialog = false
		}
		if doforgive == false{
			instance_create_layer(x,y,"Instances",o_dialogue);
			doforgive = true
		}
		if page < pagelength{
			mythought(501,page)
			if (keyboard_check_pressed(vk_space) && o_dialogue.charcount == string_length(dialogue[501,page])){
				page += 1;
			}
		}
		else if page = pagelength{
		instance_destroy(o_dialogue);
		dodialog = false
		o_stats.endingroute = 5
		o_stats.act = 5
		game_restart()
		}
	}
	
}else{
	if page < pagelength && ihavethought = true{
		if dodialog == false{
			instance_create_layer(x,y,"Instances",o_dialogue);
			dodialog = true
		}
		if loginthought = true && o_stats.runaway > 0{
			mythought(499+o_stats.runaway,page)
			if (keyboard_check_pressed(vk_space) && o_dialogue.charcount == string_length(dialogue[499+o_stats.runaway,page])){
				page += 1;
			}
		}else{
			if o_stats.athoughtcount > 0 && o_stats.athoughtcount < 30 && !(o_stats.athoughtcount = 15){
				if randomthought = 15{
					randomthought += 1
				}
				while (done[randomthought] = "executed"){
					randomthought += 1
					if randomthought = 30 then randomthought = 1
				}
				
				mythought(randomthought,page)
				if (keyboard_check_pressed(vk_space) && o_dialogue.charcount == string_length(dialogue[randomthought,page])){
					page += 1;
				}
			}else {
				mythought(o_stats.athoughtcount,page)
				if (keyboard_check_pressed(vk_space) && o_dialogue.charcount == string_length(dialogue[o_stats.athoughtcount,page])){
					page += 1;
				}
			}
		}
		//so uhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
		//gimana cara ngecek misalnya jika satu thoughtline dah dipanggil, bakal cancel trus ganti yang lain?
		//edit 1: what the fuck is ds_list
		//edit 2: okey, lemme try to use ds_list
		//edit 3: fuck ds_list
	} else if page = pagelength{
		instance_destroy(o_dialogue);
		dodialog = false
		if (loginthought = false) || (loginthought = true && o_stats.runaway < 1) {
			done[randomthought] = "executed"
			thoughtcount += 1;
		}
		loginthought = false;
		o_stats.athoughtcount = thoughtcount
		thought_timer = 0;
		randomize()
		nextthought = random_range(10,15)
		randomthought = round(random_range(1,29))
		page = 0;
		ihavethought = false;
		
	}
}
#endregion

/*
kode yang bagus
mungkin akan lebih bagus apabila aku tambah sedikit
*/