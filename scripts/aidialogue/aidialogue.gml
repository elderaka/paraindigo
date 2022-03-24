//Masukan fungsi untuk masukin fase dan halaman dari objek
ending = argument0
page = argument1
//Fungsi untuk cek apakah nama harus diganti atau tidak



#region dialogue
if instance_exists(o_stats){
	switch(ending){
		case 1:
			dialogue[0,0] = ""
			break;
	}
}
#endregion


if instance_exists(o_dialogue){
	o_dialogue.sprite = 4
	o_dialogue.text = dialogue[phase,page]
	o_terra.pagelength = array_length_2d(dialogue,phase)
}
