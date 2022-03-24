//Masukan fungsi untuk masukin fase dan halaman dari objek
phase = argument0
page = argument1
//Fungsi untuk cek apakah nama harus diganti atau tidak



#region dialogue
dialogue[0,0] = "(...)"
dialogue[0,1] = "(Dimana aku?)"
dialogue[0,2] = "(Disini gelap sekali...)"
dialogue[0,3] = "(Tetapi suara sungai ini...)"
dialogue[0,4] = "(Duniaku...)"
dialogue[0,5] = "(Styx...)"
dialogue[0,6] = "(...)"
dialogue[0,7] = "(..." + string(environment_get_variable("USERNAME")) +")"
#endregion

//Ubah text jadi isi dialogue && nama bila ada
if instance_exists(o_dialogue){
	o_dialogue.sprite = 0
	o_dialogue.text = dialogue[phase,page]
	o_intro.pagelength = array_length_2d(dialogue,phase)
}
