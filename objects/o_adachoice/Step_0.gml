//Input
down  = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
up   = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
enter = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
//h_length = horizontal
//v_length = vertikal

//Jalan ke atas bawah
posy += up - down;
if posy >= v_length { posy = 0};
if posy < 0 { posy = v_length - 1};

//Pake optionnya
//Okay first, should I draw it by myself. Or, try to randomize.
//Or wait a minute, gimana kalo misalnya ketika dibuat, sesuai dengan stubborn%, dia bikin
//dan kemudian, dengan choice Lie/Truth, ntar dimasukkin, etc etc
if enter{
	if option[posy] = truth{
		if o_stats.deathcount = 0{
			if o_ada.stubborn < 9{
			o_ada.stubborn += 1
			}if o_ada.stubborn == 4 || o_ada.stubborn == 8{
				o_ada.called = false
				o_ada.page += 1
				
			}
		}else if o_stats.deathcount = 15{
			o_ada.page += 1
			o_ada.called = false
			o_stats.endingroute = 3
		}else{
			o_ada.page += 1
			o_ada.called = false
		}
	}else if option[posy] = lie{
		o_ada.page = 0
		o_ada.phase = 50.5
		o_ada.called = false
		if o_stats.deathcount = 15{
			o_stats.endingroute = 7
			o_stats.act = 5
		}
	}
	instance_destroy()
	o_ada.spawned = false
} //okay, gw sebenernya cuman pengen stubborn system ini di phase 0. Tapi keknya lebih ribet kalo dirombak ulang daripada make if case aja
