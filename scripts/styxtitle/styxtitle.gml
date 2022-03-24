//Masukan fungsi untuk masukin fase dan halaman dari objek
phase = argument0
page = argument1
onetime = argument2
beaten = argument3
//Fungsi untuk cek apakah nama harus diganti atau tidak
changename = false
/*
#region dialogue
dialogue[0,0] = ""
dialogue[1,0] = ""
dialogue[2,0] = ""
dialogue[3,0] = ""
dialogue[4,0] = ""
dialogue[5,0] = ""
dialogue[6,0] = ""
dialogue[7,0] = ""
dialogue[8,0] = ""
dialogue[9,0] = ""

//dialogue onetime adalah dialogue wajib yang hanya one time dilakukan
if onetime = true{
	dialogue[0,0] = "Wah, halo Isagel. Kamu sudah bangun?"
	dialogue[1,0] = ""
	dialogue[2,0] = ""
	dialogue[3,0] = ""
}
//kalo misalnya kalah, dan balik ke title
if beaten = true{
	dialogue[0,0] = ""
	dialogue[1,0] = ""
	dialogue[2,0] = ""	
}



#endregion

//Ubah text jadi isi dialogue && nama bila ada
o_sdialogue.text = dialogue[phase,page]
if changename = true{
	o_sdialogue.name = name[phase,page]
	changename = false
}
*\