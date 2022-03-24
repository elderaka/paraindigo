changename = false
//Masukan fungsi untuk masukin fase dan halaman dari objek
phase = argument0
page = argument1
//Fungsi untuk cek apakah nama harus diganti atau tidak



#region dialogue
if instance_exists(o_stats){
	if o_stats.styxisbeaten == false{
		dialogue[0,0] = "Selamat datang di Nirwana. Seperti yang sudah kamu ketahui, tempat ini adalah pengujian Hakim baru"
		dialogue[0,1] = "Disini tertulis namamu adalah Isagel, dan akan menjadi... Isagel Rai?"
		dialogue[0,2] = "Cukup menarik, entah dirimu yang dinamai oleh Planet Isagel, atau sebaliknya"
		dialogue[0,3] = "Penggunaan Nirwana kali ini beda dengan yang lain, karena itu disini aku akan menjadi pendampingmu"
		dialogue[0,4] = "Namaku adalah Styx Rai, seorang [Daemon] yang mahir dalam seni [Hukum Ruang dan Waktu]"
		dialogue[0,5] = "Baiklah, kita tidak boleh buang banyak waktu lagi. Aku akan mengajarimu dasar-dasar seni di Nirwana ini"
		dialogue[0,6] = "Untuk berjalan, kamu bisa menggunakan tombol [WASD]."
		dialogue[0,7] = "Dan untuk menembak, kamu bisa menggunakan tombol [SPASI]"
		dialogue[1,0] = "Bagus sekali. Kamu tadi bisa melihat jika kamu menyerempet sedikit proyektil-proyektil itu, [Singgung] kamu akan menaik"
		dialogue[1,1] = "Oleh karena itu, tekan [SHIFT] untuk memperlihatkan [Kotak Nyawa] kamu"
		dialogue[1,2] = "Dengan singgung kamu yang menaik, kamu juga bisa meningkatkan [Kekuatan] kamu"
		dialogue[1,3] = "[Kekuatan] bisa naik sampai 4 kali, dengan setiap 25 [Singgung] kamu akan menaikkan 1 [Kekuatan]. Demikian pula dengan [Darah]"
		dialogue[1,4] = "Kau akan menaikkan 1 [Darah] setiap 50 [Singgung]. Tetapi kamu tidak bisa menaikkan nyawa"
		dialogue[1,5] = "Dan kamu harus selalu menyinggung segala proyektil selagi bisa"
		dialogue[1,5] = "Dan ketika aku bilang selagi bisa, AKU SERIUS"
		dialogue[2,0] = "Omong-omong tentang Nyawa, di sisi bawah kiri kamu terlihat berapa banyak [Nyawa] dan [Darah] yang kamu punya"
		dialogue[2,1] = "Ketika kamu mengurangkan nyawa, proyektil musuh akan otomatis dibersihkan"
		dialogue[2,2] = "Dan jika nyawa kamu menjadi nol, kamu akan ditendang kembali menuju Sty- maksudnya aku"
		dialogue[2,3] = "Oleh karena itu, pencet [F] untuk menggunakan skill kamu. Hati-hati karena skill bisa mengurangi [Kewarasan]"
		dialogue[2,4] = "Setiap [Singgung] kamu naik, kamu juga bisa menaikkan beberapa poin [Kewarasan] yang terlihat disebelah kanan kamu"
		dialogue[2,5] = "Silahkan dicoba apabila kamu merasa putus asa"
		dialogue[3,0] = "Bagus, kamu sudah menguasai semua dasar-dasarnya"
		dialogue[3,1] = "Sekarang..."
		dialogue[3,2] = "git gud"
		dialogue[4,0] = "..."
		dialogue[4,1] = "enyahlah"
		dialogue[5,0] = "kok bisa liat ini?"
		dialogue[10,0] = "Sepertinya oh sepertinya"
		dialogue[10,1] = "Seseorang sedang menggunakan mode terlarang"
		dialogue[10,2] = "Aku yakin ini bukanlah rodeo pertamamu"
		dialogue[10,3] = "Tetapi terima kasih"
		dialogue[10,4] = "Kau dengan bodohnya memperlihatkan [Faktor Erudera] kepadaku"
	}else if o_stats.styxisbeaten == true{
//dialogue Styx Rai
	dialogue[0,0] = "Selamat datang kembali ke Nirwana, Isagel. Sepertinya sudah lama aku tidak berjumpa denganmu"
	dialogue[0,1] = "Atau mungkin, aku bisa memanggilmu Isagel Rai sekarang? Belum? Oh iya aku lupa"
	dialogue[0,2] = "Karena itulah gunanya dari Nirwana ini. Disini adalah tempat pelatihan para Hakim baru termasuk kamu"
	dialogue[0,3] = "Meskipun sepertinya penggunaan Nirwana kali ini sedikit beda dari yang lain. Tetapi tenang saja!"
	dialogue[0,4] = "Aku harap kamu tidak lupa dengan diriku. Namaku adalah Styx Rai, seorang [Daemon] yang dahulu mengantar kamu ke dunia Isagel"
	dialogue[0,5] = "Dan aku bisa dibilang cukup bangga dengan pencapaianmu di dunia itu dan bahkan kau bisa jadi hakim dari Isagel!"
	dialogue[0,6] = "Ohiya sepertinya aku tidak boleh banyak basa basi. Mari kita simak ulang bagaimana cara kerja Nirwana ini."
	dialogue[0,7] = "Untuk berjalan, kamu bisa menggunakan tombol [WASD]. Dan untuk menembak, kamu bisa menggunakan tombol [SPASI]"
	dialogue[1,0] = "Mudah bukan? Sekarang, kamu bisa menggunakan [SHIFT] untuk melakukan [Singgung]."
	dialogue[1,1] = "Dengan menekan [SHIFT], kamu akan memperlihatkan kotak nyawa kamu"
	dialogue[1,1] = "Tenang saja! Meski dirimu terlihat besar, yang paling penting adalah untuk tidak mengenai [Kotak Nyawa] kamu"
	dialogue[1,2] = "Dengan menaikkan [Singgung], kamu akan meningkatkan [Kekuatan] setiap 100 [Singgung] dan darah setiap 50 [Singgung]"
	dialogue[2,0] = "Bagaimana? Untuk itu, lebih baik untuk kamu tetaplah menaikkan [Singgung] selama kamu masih bisa"
	dialogue[2,1] = "Tetapi hati-hati! Jika kau terkena peluru musuh, [Darah]mu akan berkurang. Dan jika [Darah]mu menjadi 0, nyawamu yang akan berkurang"
	dialogue[2,2] = "Tenang saja, jika [Nyawa]mu menjadi nol, aku akan segera menjemput dan menyelamatkanmu"
	dialogue[2,3] = "Untuk mencegah peluru mengenai [Kotak Nyawa]mu, cobalah tekan [F] untuk menggunakan [Seni] milikmu"
	dialogue[2,4] = "Setiap kali kamu menggunakan [Seni], [Kewarasan]mu akan menghilang sebanyak 50%. Kamu bisa melihatkan [Kewarasan] di sisi kananmu"
	dialogue[2,5] = "Tetapi kamu hanya bisa melihat [Kewarasan] apabila kamu merasa sedikit capek. Kamu bisa meningkatkan sedikit kewarasan dengan menaikkan [Singgung]mu"
	dialogue[3,0] = "Bagaimana? Sepertinya sedikit sulit dan sedikit susah, bukan?"
	dialogue[3,1] = "Tapi begitulah pelatihan di [Nirwana] ini."
	dialogue[3,2] = "Dan lagi nama [Nirwana] ini adalah [Nirwana Pancarona]"
	dialogue[3,3] = "Sungguh keren, bukan? Oke baiklah. Jadi setelah ini kau akan melawan 3 [Hakim] yang masing-masing cukuplah kuat"
	dialogue[3,4] = "Arkas Rai adalah seorang [Daemon] seperti diriku. Dia adalah [Hakim Ruang dan Waktu] yang mempunyai spesialisasi peluru kendali. Dan hati-hati karena dia bisa memanipulasi waktu"
	dialogue[3,5] = "Sirius Rai bahkan lebih bahaya lagi dari Arkas Rai. Dia bukanlah [Hakim], melainkan [Penjaga Hukum Gravitasi]. Dia mempunyai spesialisasi gelombang dan bisa mempersempit pergerakan"
	dialogue[3,6] = "Dan yang terakhir adalah Antares Rai. Dia juga bukanlah [Hakim] tetapi [Penjaga Hukum Materi]. Dia mempunyai spesialisasi dalam peluru sebar. Hati-hati karena kau pasti akan menyinggung banyak peluru disini"
	dialogue[3,7] = "Jadi sekian introduksi dari aku. Aku doakan semoga kau bisa melewati pelatihan di Nirwana ini"
	}
}
#endregion
#region changename

#endregion

//Ubah text jadi isi dialogue && nama bila ada
if instance_exists(o_dialogue){
	o_dialogue.sprite = 2
	o_dialogue.text = dialogue[phase,page]
	o_styx.pagelength = array_length_2d(dialogue,phase)
	if changename = true{
		o_dialogue.name = name[phase,page]
		changename = false
	}
}
