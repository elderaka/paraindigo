//Masukan fungsi untuk masukin fase dan halaman dari objek
phase = argument0
page = argument1
//Fungsi untuk cek apakah nama harus diganti atau tidak



#region dialogue
if instance_exists(o_stats){
dialogue[0,0] = "Halo, Isagel. Lama tak jumpa"
dialogue[0,1] = "Aku harap kamu tidak lupa denganku. Aku Alice Tet."
dialogue[0,2] = "Tetapi sekarang aku bisa dipanggil Terra Rai"
dialogue[0,3] = "Atau mungkin Xenos Rai."
dialogue[0,4] = "..."
dialogue[0,5] = "Atau Terra Rai saja sudah cukup"
dialogue[0,6] = "Al-"
dialogue[0,7] = "Aku bercanda. Panggil saja Terra Rai"
dialogue[0,8] = "Mengejutkan, bukan? AKu juga baru saja menjadi [Hakim] beberapa saat setelah pertarungan Trisphera"
dialogue[0,9] = "Tidak, Haru tidak jadi Terra Rai karena dia sudah memegang nama Harmonia Rai"
dialogue[0,10] = "Lalu mengapa aku mengambil nama Xenos Rai? Aku bercanda. Nama itu aku berikan ke Petra... sepertinya"
dialogue[0,11] = "Dnx glvlql phqfred xqwxn phqfdul wdkx vxpehu Deqrupdolwdv bdqj Vlulxv elodqj. Bd, dnx wdkx gld dgd glvlql"
dialogue[0,12] = "Jadi, aku penasaran kekuatan dari Isagel yang juga merupakan seorang [Indigo]"
dialogue[0,13] = "Aku bahkan ingin mengajakmu ke semestaku. Tetapi sayang sekali Eros Rai terlalu ketat mengenai Translasi..."
dialogue[0,14] = "[OWJC W] XQGWJHWD LAIXQWP ZQJEW EJE. WZW YDANQXEI XQGWJHWD LAIXQWP ZQJEW EJE. ZQJEW EJE WZWHWD XQWPWJ GQWOW UWJC HAXED GQWP ZWNE ZEW"
dialogue[0,15] = "IFS FPZ YFPZY. FPFS PJRZSLPNSFS GFMBF FIF PZFXF DFSL QJGNM PZFY IFWN INF, UJSHNUYF XJRJXYFPZ."
dialogue[0,16] = "Maaf, lanjut lagi ke yang tadi. Antares Rai tidak bisa menjadi mentormu karena dia sedang... sibuk"
dialogue[0,17] = "Jadi aku disini yang akan menggantikannya"
dialogue[0,18] = "Baiklah aku tidak tahu lagi ingin bilang apa. Aku disini akan menggunakan [Hukum Materi] jadi tolong siap-siap"
dialogue[0,19] = "Siap? Ayo mulai"
dialogue[1,0] = "Tadi hanyalah permulaan. Sekarang mari kita coba yang lain"
dialogue[2,0] = "..."
dialogue[3,0] = ".."
dialogue[4,0] = "."
dialogue[5,0] = ""
dialogue[5,1] = ""
dialogue[5,2] = ""
dialogue[5,3] = "Disini rupanya kau"
dialogue[5,4] = "Ada"
}
#endregion

//Ubah text jadi isi dialogue && nama bila ada
if instance_exists(o_dialogue){
	o_dialogue.sprite = 4
	o_dialogue.text = dialogue[phase,page]
	o_terra.pagelength = array_length_2d(dialogue,phase)
}
