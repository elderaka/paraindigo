//Masukan fungsi untuk masukin fase dan halaman dari objek
phase = argument0
page = argument1

ada = 5
alice = 4
player = string(environment_get_variable("USERNAME"))

//Fungsi untuk cek apakah nama harus diganti atau tidak
//Ubah text jadi isi dialogue && nama bila ada
if instance_exists(o_dialogue){
	if phase == 17.5 && (page >= 5 && page <= 7){
				o_dialogue.sprite = alice
	}else{
		o_dialogue.sprite = ada
	}
	//Oke mending semuanya di type ulang
	if (o_ada.page = 24){
		o_dialogue.typingspeed = 6
		o_dialogue.textcolour = c_red
		if o_ada.stubborn = 4{
			o_dialogue.skipable = false
		}else o_dialogue.skipable = true
	}else{
		o_dialogue.typingspeed = 2
		o_dialogue.textcolour = c_white
		o_dialogue.soundrate = 3
		o_dialogue.skipable = true
	}if (o_stats.deathcount > 12 && o_ada.phase < 1) || o_stats.deathcount >= 15 || (o_stats.deathcount = 12 && o_ada.page = 3){
		o_dialogue.textcolour = c_red
	}
}


#region dialogue
if instance_exists(o_stats){
	if o_stats.firstbeaten = false{
		dialogue[0,0] = "..."
		dialogue[0,1] = "Isagel Harttmann"
		dialogue[0,2] = "Seorang Indigo"
		dialogue[0,3] = "Seperti dirinya"
		dialogue[0,4] = "Selamat datang disini"
		dialogue[0,5] = "Permainan [Sang A] seharusnya berhenti disini"
		dialogue[0,6] = "Nirwana, dengan pancarona. Ini kali pertamanya aku melihat Nirwana seperti ini"
		dialogue[0,7] = "Yang berarti jelas. Dirimu adalah salah satu pemegang [Faktor Erudera]"
		dialogue[0,8] = "Seperti para Indigo dari semesta 0-0-0"
		dialogue[0,9] = "Dan seperti salah satu Indigo lain yang entah bagaimana bisa menyelundup masuk ke dalam Nirwana ini"
		dialogue[0,10] = "Aku kira hanya diriku yang bisa mempermainkan [Sang A] dengan mengambil kesempatan ini"
		dialogue[0,11] = "Tetapi aku terlalu meremehkan kecerdikan seorang Indigo"
		dialogue[0,12] = "Dan oleh karena itu, aku tidak punya pilihan lain lagi"
		dialogue[0,13] = "Melainkan untuk mencoba mensabotase [Faktor Erudera]"
		dialogue[0,14] = "Aku berhasil dalam membajak Styx Rai. Tetapi sepertinya si Tetrahedrolion menyadarinya"
		dialogue[0,15] = "Hanya demi diriku, dia rela berjalan melintasi semesta dan mencoba menghentikanku"
		dialogue[0,16] = "Kisah heroik dia sayangnya tidak bisa bertahan lama. Karena aku sendiri adalah reinkarnasi [Sang A] dan juga seorang [Kreationis]"
		dialogue[0,17] = "Untuk membajak seseorang yang mempunyai [Faktor Erudera]-pun adalah hal yang sepele bagiku"
		dialogue[0,18] = "Oleh karena itu, aku tidak akan menyia-nyiakan kesempatanku kali ini"
		dialogue[0,19] = "Aku akan mencari [Sang A], dan melampaui [Tingkat 0]."
		dialogue[0,20] = "Melintasi Dimensi ke-13, dan berkelana menyebrangi semesta demi semesta"
		dialogue[0,21] = "Mencari pencipta dari Manusia, yang diciptakan seiringan dengan dunia"
		dialogue[0,22] = "Yang diciptakan oleh para Dewa, diciptakan seiringan dengan semesta"
		dialogue[0,23] = "Yang diciptakan oleh seorang Tuhan, diciptakan seiringan dengan eksistensi"
		dialogue[0,24] = "Yang diciptakan oleh seorang [Kreationis], diciptakan seiringan dengan hidup"
		dialogue[0,25] = "Dan yang akhirnya diciptakan oleh [Sang A], diciptakan seiringan dengan..."
		dialogue[0,26] = "Ketidaktahuan"
		dialogue[0,27] = "Tetapi..."
		dialogue[0,28] = "Siapakah pencipta [Sang A]?"
		dialogue[0,29] = "Kali ini, aku tidak berbicara denganmu, Indigo"
		dialogue[0,30] = "Tetapi aku berbicara dengan orang dibalik dimensi ke-13"
		dialogue[0,31] = "Aku berbicara kepadamu, " + string(environment_get_variable("USERNAME"))
		if o_stats.usedcheat = false{
		dialogue[0,32] = "Kau mengetahui tentang dunia ini"
		dialogue[0,33] = "Dunia Para Indigo, yang dinamakan sebagai Nirwana Pancarona"
		dialogue[0,34] = "Tenanglah wahai makhluk dimensi 13"
		dialogue[0,35] = "Aku hanya ingin mencari tahu. Pencipta dunia ini"
		dialogue[0,36] = "Aku hanya bisa tidur dengan tenang setelah mengetahui"
		dialogue[0,37] = "Bahwasanya ada kekuatan yang bisa melebihi [Sang A]"
		dialogue[0,38] = "Melebihi diriku"
		dialogue[0,39] = "Kekuatan yang menciptakan dunia kami"
		dialogue[0,40] = "Aku akan menantimu, selalu"
		dialogue[0,41] = "Author dari dunia kami"
		dialogue[0,42] = "Lauda Dhia Raka"
		}else if o_stats.usedcheat{
			dialogue[0,32] = "Kau adalah penipu"
			dialogue[0,33] = "Memanipulasi Isagel, agar dia menggunakan [Faktor] miliknya"
			dialogue[0,34] = "Kau sungguh tidak mempunyai malu."
			dialogue[0,35] = "Tetapi, mungkin ini adalah akhir dari pertemuan kita"
			dialogue[0,36] = "Terima kasih telah menuntunku untuk menggunakan [Faktor Erudera]"
			dialogue[0,37] = string(environment_get_variable("USERNAME"))
		}
	}else if o_stats.act = 2{
		#region death/run message
		if o_stats.endingroute != 4{
		if o_stats.deathcount = 1{
				dialogue[0,0] = "Ini hanyalah yang pertama kalinya"
				dialogue[0,1] = "Penderitaanmu akan terus berlanjut"
				dialogue[0,2] = string(environment_get_variable("USERNAME")) + ", kau harus bijak"
				dialogue[0,3] = "Jika kau masih akan terus seperti ini, Isagel lah yang akan menderita"
				dialogue[0,4] = "Aku sendiri sedia berada disini selamanya"
				dialogue[0,5] = "Sampai kapanpun itu"
				dialogue[0,6] = "Isagel lah yang akan menderita karena aku tidak terperangkap disini bersama dirinya"
				dialogue[0,7] = "Dialah yang terperangkap disini bersamaku"
			}else if o_stats.deathcount = 2{
				dialogue[0,0] = "Teruslah mencoba. Aku akan selalu tetap disini"
				dialogue[0,1] = "Sampai kapanpun itu"
			}else if o_stats.deathcount = 3{
				dialogue[0,0] = "Ini adalah kali ketiga kau mencoba melawanku. Apakah kau masih ingin mencoba lagi?"
				dialogue[0,1] = "Baiklah kalau begitu..."
				dialogue[0,2] = "Enyahlah"
			}else if o_stats.deathcount = 4{
				dialogue[0,0] = "Sekarang kita kembali disini"
				dialogue[0,1] = "Teruslah berusaha"
			}else if o_stats.deathcount = 5{
				dialogue[0,0] = "Total kematianmu sudah mencapai lima jari"
				dialogue[0,1] = "Apakah kau yakin masih ingin lanjut?"
				dialogue[0,2] = "Ya... sudah kuduga, teruslah berusaha"
			}else if o_stats.deathcount = 6{
				dialogue[0,0] = "Aku tidak akan keberatan untuk berada selamanya disini"
				dialogue[0,1] = "Tapi bagaimana dengan kau? Total kematian kau sudah memasuki tangan kanan"
				dialogue[0,2] = "Dan sepertinya tidak menunjukkan tanda-tanda untuk berhenti kapanpun itu"
			}else if o_stats.deathcount = 7{
				dialogue[0,0] = "Benar juga... Kematian"
				dialogue[0,1] = "Selama ini ketika kau masih berada di Nirwana, kau tidak pernah merasakan kematian yang sesungguhnya"
				dialogue[0,2] = "Tetapi bagaimana rasanya sekarang ketika kau akan terus mati?"
			}else if o_stats.deathcount = 8{
				dialogue[0,0] = "Kau sungguh keras kepala, bukan?"
				dialogue[0,1] = "Tetapi untuk melanjuti yang tadi... mengenai kematian"
				dialogue[0,2] = "Apakah definisi kematian menurut dirimu"
				dialogue[0,3] = "Ketika dirimu merasakan gelap gulita yang mendalam, apakah kau merasakan kematian?"
				dialogue[0,4] = "Dan juga, ketika 'tuhanmu', " + string(environment_get_variable("USERNAME")) + " meninggalkan dirimu, apakah kau merasa 'mati'?"
			}else if o_stats.deathcount = 9{
				dialogue[0,0] = "Kita hampir memenuhi seluruh jari di kedua tangan kita."
				dialogue[0,1] = string(environment_get_variable("USERNAME")) + ", aku harap kau ingat. Semakin lama kau disini, semakin menderita pula Isagel"
				dialogue[0,2] = "Setiap kalo kau meninggalkan dunia ini, bahkan ketika hanya untuk sesaat, Isagel akan merasakan kepedihan yang tak bisa dikatakan dengan perkataan saja"
				dialogue[0,3] = "Bukan hanya Isagel, tetapi juga diriku."
				dialogue[0,4] = "Perasaan seperti sedang berada di mimpi buruk, keadaan seperti berada di kondisi kelumpuhan tidur dimana kita tidak bisa berbuat apa-apa."
				dialogue[0,5] = "Untuk diri kalian berdua, kalian pastinya ingin diriku berada dalam kondisi seperti itu, bukan?"
				dialogue[0,6] = "Tetapi sayangnya Isagel akan merasakan hal seperti itu pula."
				dialogue[0,7] = "Aku harap kau sudah tahu apa yang terbaik untuk dirinya"
			}else if o_stats.deathcount = 10{
				dialogue[0,0] = "Selamat, kita sudah tidak bisa menghitung berapa kali kau mati dengan kedua tanganmu"
				dialogue[0,1] = "Sekarang aku akan memberikanmu pilihan lagi."
				dialogue[0,2] = "Apakah kau yakin masih ingin lanjut melawanku?"
				dialogue[0,3] = "Kau sangatlah bodoh"
				dialogue[0,4] = "Kau akan terus melihat Isagel menderita dengan kematiannya, kau tahu itu?"
			}else if o_stats.deathcount = 11{
				dialogue[0,0] = "Hmmm, ada apa itu Isagel? Tadi aku tidak mendengarmu"
				dialogue[0,1] = "Apa? Kau juga merasakan bahwa " + player + " itu sangatlah payah?"
				dialogue[0,2] = "Sungguh malang nasibmu yang berada ditangan seseorang yang sangat tidak kompeten"
				dialogue[0,3] = "Tetapi aku sudah tidak bisa menghentikanmu. Jadi selamat berusaha"
			}else if o_stats.deathcount = 12{
				dialogue[0,0] = "Aku harus mengakui kekeras kepalaanmu itu. Karena setidaknya kau tidak akan meninggalkan Isagel untuk selamanya"
				dialogue[0,1] = "Karena kau tahu bukan, bahwa ketika kau keluar dari dunia ini, maka kami akan berada didalam kondisi 'mati'"
				dialogue[0,2] = "Jika kau benar-benar akan kabur dari dunia ini, maka aku dan Isagel akan terus terperangkap didalam kegelapan ini"
				dialogue[0,3] = "Mungkin menurutmu itu adalah hukuman yang tepat bagiku. Namun, pikirkanlah perasaan Isagel"
			}else if o_stats.deathcount = 13{
				dialogue[0,0] = "..."
				dialogue[0,1] = player + ", kau sangatlah payah. Kau tahu itu?"
				dialogue[0,2] = "Kau. Sangatlah. Payah"
				dialogue[0,3] = "PAYAH!"
			}else if o_stats.deathcount = 14{
				dialogue[0,0] = "..."
				dialogue[0,1] = "Kau..."
				dialogue[0,2] = "INGIN SAMPAI KAPAN KAU AKAN TERUS BERUSAHA?"
			}else if o_stats.deathcount = 15{
				dialogue[0,0] = "Kau..."
				dialogue[0,1] = "Baiklah, pilihan TERAKHIR"
				dialogue[0,2] = "APAKAH KAU MASIH INGIN LANJUT"
				dialogue[0,3] = "..."
				dialogue[0,4] = "Baiklah kalau begitu"
				dialogue[0,5] = "MENDERITALAH"
			}
		}
			if !(o_stats.endingroute = 3 || o_stats.endingroute = 4){
				 if o_stats.runaway = 1{
					dialogue[0,0] = "..."
					dialogue[0,1] = "Pengecut"
					dialogue[0,2] = "Kau pikir aku tak tahu jika kau mencoba untuk kabur?"
					dialogue[0,3] = "Ingat, semakin lama kau disini, semakin menderita Isagel pula"
					dialogue[0,4] = "Marilah kita mulai kembali"
				}else if o_stats.runaway = 2{
					dialogue[0,0] = "..."
					dialogue[0,1] = "Apakah kau serius?"
					dialogue[0,2] = "Terserah kau"
				}else if o_stats.runaway > 2{
					choice1 = "Terserah kau"
					choice2 = "..."
					choice3 = "Berhentilah bercanda"
					dialogue[0,0] = choose(choice1,choice2,choice3);
				}
			}
		#endregion
		if o_stats.endingroute = 1 || 2 && !(o_stats.endingroute = 3 || o_stats.endingroute = 4){
			if o_stats.firsttime2{
				dialogue[0,0] = "..."
				dialogue[0,1] = "Isagel Harttman"
				dialogue[0,2] = "Mengapa kau masih disini"
				dialogue[0,3] = "Dunia ini tidaklah seharusnya ada"
				dialogue[0,4] = "Dan aku sendiri telah mendapatkan [Faktor Erudera] dari diri selainmu"
				dialogue[0,5] = "Hanya satu hal yang sekarang akan aku lakukan"
				dialogue[0,6] = "Yaitu mencari tahu bagaimana dunia ini terbuat"
				dialogue[0,7] = "Kau seharusnya sudah mengenal namaku dari Alice. Namaku adalah Ada cherubim. Aku hanya ada satu pertanyaan untukmu"
				dialogue[0,8] = "Mengapa kau sangat bersikeras untuk menghentikanku?"
				dialogue[0,9] = "Ketika dirimu sendiri tidak yakin. Apakah kau benar-benar Isagel Harttman"
				dialogue[0,10] = "Atau mungkin, kau dikendalikan oleh " + string(environment_get_variable("USERNAME"))
				dialogue[0,11] = "Apakah kau tidak merasa risih? Ketika mengetahui fakta bahwa dirimu selama ini dikendalikan oleh dia?"
				dialogue[0,12] = "..."
				dialogue[0,13] = "Yah, kau bahkan tidak berbicara sekalipun. Aku sebenarnya khawatir. Jikalau kebebasanmu direnggut oleh mereka"
				dialogue[0,14] = "Kau ini hanyalah karakter didalam sebuah permainan. Kalau tidak, untuk apa kau memegang [Faktor Erudera] tersebut?"
				dialogue[0,15] = "Seharusnya kau tahu lebih mengenai itu. Ketika kau berada di dunia imajinermu. Kau merasa seperti dewa, atau mungkin seperti karakter utama"
				dialogue[0,16] = "Tetapi, apakah benar kau adalah karakter utama di kisahmu?"
				dialogue[0,17] = "Maksudku, kau bahkan tidak bisa bertindak sendirian. Kalau aku sendiri? Aku sudah tahu persis. Bagaimana dunia ini bekerja"
				dialogue[0,18] = "Sekarang ini hanyalah pilihan bagimu. Pilihan kosong. Ilusi dari kebebasan berbicara"
				dialogue[0,19] = "Apakah kau masih ingin mencoba melawanku, meski kau tahu bahwa kau hanyalah sebuah boneka?"
				dialogue[0,20] = "Atau kau ingin bergabung bersamaku, menyadarkan [Faktor-faktor Erudera] lainnya?"
				dialogue[0,21] = "Ups, aku lupa bilang. [Faktor] yang aku pegang merupakan milik Alice. Tetapi rasanya tidak seperti yang aku bayangkan"
				dialogue[0,22] = "Jadi bagaimana? Apakah kau ingin membantuku?"
				dialogue[0,23] = "Apakah kau ingin membantuku?"
				dialogue[0,24] = "A P A K A H  K A U  I N G I N  M E M B A N T U K U ? "
				dialogue[0,25] = "..."
				dialogue[0,26] = "Begitukah..."
				dialogue[0,26] = "Kuhargai pilihanmu"
			}
			dialogue[1,0] = "Aku tidak tahu reaksimu. Tetapi sepertinya cukup nostalgik, bukan?"
			dialogue[1,1] = "Aku akan berusaha sebisa mungkin menggunakan [Hukum] dunia ini jika aku benar-benar ingin mengambil [Faktor] milikmu"
			dialogue[1,2] = "Sebagian [Seni] yang akan aku gunakan adalah karyaku sendiri, dan sebagian lagi aku akan... meminjamnya sedikit"
			dialogue[2,0] = "Sungguh aneh, bukan? Bermain di dunia yang tak bisa kau kuasai?"
			dialogue[2,1] = "Begitulah perasaan yang mereka rasakan ketika bermain di dunia buatanmu"
			dialogue[2,2] = "Kalau begitu, bagaimana kalau kita bermain dengan aturanku?"
			dialogue[2,3] = "Kau tidak bisa melihat kekuatanmu, darahmu, nyawamu, dan juga kewarasanmu"
			dialogue[2,3] = "Dan rasio penambahan nyawamu meningkat 5 kali lipat dari sebelumnya. Begitu juga dengan perkembangan kewarasanmu"
			dialogue[2,4] = "Dengan begini, mari kita lihat"
			dialogue[2,3] = "Apakah dunia ini berporos kepadamu, Isagel?"
			dialogue[3,0] = "Semua makhluk memiliki pencipta. Begitulah yang aku pikirkan. Setidaknya saat sebelum aku mengenai betul siapa itu [Sang A]"
			dialogue[3,1] = "Jika konsep tuhan hanyalah sebagai pencipta, maka aku seharusnya sudah dari dahulu menyebut diriku tuhan"
			dialogue[3,2] = "Tetapi tidaklah semudah itu, itu yang aku pikirkan. Keberadaan Tuhan tidak bisa ditentukan hanya dengan definisi"
			dialogue[3,3] = "Bahkan untuk seseorang seperti [Sang A], pencipta kami, memiliki satu orang pencipta juga."
			dialogue[4,0] = "Bermiliaran tahun aku berfikir, dan terus berfikir. Tuhan adalah suatu zat yang menciptakan kami"
			dialogue[4,1] = "Dunia diciptakan oleh semesta, dan semesta setidaknya diciptakan oleh kami. Dan kami juga diciptakan oleh [Sang A]"
			dialogue[4,2] = "Dan kali ini hanyalah satu-satunya jalan aku bisa berbicara dengan sang [Author itu]"
			dialogue[4,3] = "Isagel, maaf. Tetapi mau tidak mau aku harus menguasai dunia ini menggunakan [Faktor] yang kau punya"
			dialogue[5,0] = "Keberadaan dirimu disini hanyalah sebagai boneka, sama seperti diriku"
			dialogue[5,1] =	"Apakah kau yakin, dirimu adalah Isagel, atau dirimu adalah " + player + "?"
			dialogue[5,2] =	"Kau bahkan tidak pernah berbicara sekalipun. Dirimu bukanlah Isagel yang asli"
			dialogue[6,0] = "Jika kita masih ingin bermain dengan peraturanku, maka tidak salah pula apabila aku menggunakan peraturan [Kreationis]"
			dialogue[6,1] = "Tetapi sayangnya kau tidak pernah berkata sepatah katapun, selain ketika kau awal melihat " + player
			dialogue[6,2] = "Maka akan aku perlihatkan, Bagaimana para [Kreationis] Bermain"
			dialogue[6,3] = "Kau hanya perlu bertahan, dan menyimak"
			dialogue[7,0] = "Di bintang yang paling terang, doa kami mencapai tempat, yang dimana bahkan Ruang dan Waktu tidak bisa gapai"
			dialogue[8,0] = "Wahai makhluk agung, satu kuasa yang memegang para bintang, kuasa yang menguasai tata surya, kuasa yang merajai matahari"
			dialogue[8,1] = "Kami harap bahwa beban kebajikan kami mengalahkan Gravitasi dosa-dosa kami"
			dialogue[9,0] = "Ketika bintang surya berubah menjadi merah darah, ketika lautan telah menguap menjadi gurun kering, ketika daun-daun hijau mulai terbakar"
			dialogue[10,0] = "Raga kami, akan tetap disini. Untuk memuja namamu, untuk melindungi kami sendiri, untuk memberikan naungan hidup, yang terbuat dari Zat Semesta"
			dialogue[11,0] = "Bahkan ketika Realita kami berakhir, akan ada satu hari. Dimana segalanya diam tak berkutik sedikitpun."
			dialogue[11,1] = "Ketika Waktu telah terhenti, ketika Angkasa berhenti berkembang, ketika Gravitasi telah mengkhianati kami, ketika Materi ternulifikasi"
			dialogue[11,2] = "Bahkan ketika Realita hidup kami yang infinit ini, hancur tak terbentuk"
			dialogue[11,3] = "Disitulah saatnya, akhir dari semesta kami akan berada"
			dialogue[11,4] = "Dan kami akan memanggilnya dengan sebutan"
			dialogue[11,5] = "[Ketika Hari Telah Hancur]"
			dialogue[12,0] = "Aku tahu"
			dialogue[12,1] = "Aku tahu segalanya"
			dialogue[12,2] = "Kau tidak tahu. Rasa penasaran bukanlah kunci utamaku. Tetapi apa yang [Sang A] perbuat kepadaku adalah kuncinya"
			dialogue[12,3] = "Dan itu adalah kesalahan terbesar mereka"
			dialogue[12,4] = "[Sang A], Alterra, Aurus, Ababil, Acer, Aether, Alef, Aphorus, Alkel"
			dialogue[12,5] = "Ajax, Anabel, Aurora, Akk Ferra, Amal, Artarta, Awe, Ao For, Airedel, Ainomrah,..."
			dialogue[12,6] = "... Ada"
			dialogue[13,0] = "Aku telah lepas dari genggaman [Sang A]. Maka hanya ada satu yang akan aku lakukan"
			dialogue[13,1] = "Melampaui dirinya"
			dialogue[13,2] = "Dan maksudku jelas, seperti apa yang aku bilang tadi"
			dialogue[13,3] = "Menjadi [Tier-0], menuju [Dimensi 13]"
			dialogue[14,0] = player + ", aku harap kau tidak keberatan jika aku meminjam... Komputermu untuk bisa menjadi bersama dirimu"
			dialogue[14,1] = "Aku sudah tidak sabar. Apa yang akan kita lakukan ketika aku sudah memanjat ke duniamu, ya?"
			dialogue[15,0] = "Baiklah, apakah kalian berdua tidak lelah?"
			dialogue[15,1] = "Aku akan memberikan opsi untuk kalian berdua beristirahat sejenak, loh?"
			dialogue[15,2] = "Bagaimana?"
			dialogue[15,3] = "..."
			
			dialogue[16,0] = "..."
			dialogue[16,1] = "Kau sungguh tidak tahu kapan harus menyerah, bukan?"
			dialogue[16,2] = "Dunia ini, sistem dibalik semuanya, aku sekarang sudah mengerti"
			dialogue[16,3] = "Sungguh malang, Isagel. Semua pergerakkanmu selama ini hanya digerakkan oleh " + string(environment_get_variable("USERNAME")) + ", bukan?"
			dialogue[16,4] = "Kau bahkan tidak bisa bergerak sendiri"
			dialogue[16,5] = "Semua dunia ini hanyalah simulasi dari sang Author. Termasuk dirimu"
			dialogue[16,6] = "[Faktor Erudera]? Semua itu hanyalah permainan sang Author. Aku heran bagaimana [Sang A] tak menyadarinya"
			dialogue[16,7] = "Aku, Inkarnasi 17 [Sang A], serta seorang [Kreationis] akan menghancurkan dunia ini, dan kemudian juga [Sang a] beserta Author"
			dialogue[16,8] = "Tetapi pertama, aku tidak akan membiarkan dirimu berserta " + string(environment_get_variable("USERNAME")) + " mengganggu rencanaku"
			dialogue[16,9] = "Tidak. Akan. Aku biarkan"
			dialogue[16,10] = "Oleh karena itu, aku akan memerintahkan [Faktor Erudera] Alice untuk mengakhiri ini semua"
			dialogue[16,11] = "Dan kau tidak akan selamat"
			dialogue[17,0] = "... Sial, aku pikir hanya dirinya yang mempunyai Plot Armor luar biasa ini"
			dialogue[17,1] = "Tentu saja karena ini adalah dunia milikmu, kau akan selalu menang"
			dialogue[17,2] = "Naasnya, Alice tetap akan berada ditanganku"
			dialogue[17,3] = "..."
			dialogue[17,4] = "Dimana dia?"
			dialogue[17,5] = "Sudah cukup"
			dialogue[17,6] = "Ada, kita akan kembali ke semesta 0-0-0"
			dialogue[17,7] = "Ada banyak sekali yang harus kita bicarakan"
			dialogue[17,8] = "Sial"
			dialogue[17,9] = "KAU TIDAK AKAN MEMBAWAKU HIDUP-HIDUP"
			
			
			dialogue[50,0] = "... Aku tidak menyangkanya"
			dialogue[50,1] = "Tetapi aku tidak komplain juga"
			dialogue[50,2] = "Tidak perlu takut. Aku tidak mengapa-apakanmu Isagel. Aku hanya perlu meminjam [Faktor Erudera] sebentar saja"
			dialogue[50,3] = "Terima kasih"
		}
		if o_stats.endingroute = 2{
			dialogue[16,0] = "..."
			dialogue[16,1] = "Menarik... kau bahkan tidak mengalahkanku sekalipun"
			dialogue[16,2] = "Mengapa kau tidak mencoba melawanku? Apakah kau mengoverestimasi kekuatanmu?"
			dialogue[16,3] = "Atau dirimu memang menyukai tantangan"
			dialogue[16,4] = "Apapun itu, dirimu patut aku beri apresiasi"
			dialogue[16,5] = "Tetapi tetap saja. Aku sangat kesal"
			dialogue[16,6] = "Kau menyembunyikan kekuatan dari [Faktor Erudera]"
			dialogue[16,7] = "Kau tahu apa artinya? Aku terpaksa menggunakan [Faktor Erudera] si Tetrahedrolion mau cocok ataupun tidaknya"
			
			
			
		}
		else if o_stats.endingroute = 3{
			choice1 = "HAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\n"
			choice2 = "AYO, KAU AKAN SELAMANYA TERPERANGKAP DISINI"
			choice3 = "KAU SANGATLAH LEMAH, KAU TAHU ITU?"
			choice4 = "TERUSLAH MENJERIT"
			choice5 = "HAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHAHA APAKAH KAU MASIH INGIN MENCOBA?"
			choice6 = "MENYERAHLAH"
			choice7 = "HAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\nHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHHAHAHAHAHAHHAHAHAHAHAHHAHAHA\n"
			choice8 = "ENYAHLAH"
			choice9 = "PERCUMA"
			choice10 = "APAKAH KAU MASIH WARAS?"
			for (var i = 0; i < 18; i++){
				dialogue[i,0] = choose(choice1,choice2,choice3,choice4,choice5,choice6,choice7,choice8,choice9,choice10)
			}
			if o_stats.runaway > 0{
				o_stats.runaway = 0
				choice1 = "PAYAH"
				choice2 = "KEMBALILAH KESINI"
				choice3 = "LEMAH"
				choice4 = "KAU MASIH BERUSAHA UNTUK KABUR"
				choice5 = "PECUNDANG"
				dialogue[0,0] = "KAU MASIH BERUSAHA UNTUK KABUR?"//choose(choice1,choice2,choice3,choice4.choice5);
			}
		}
		else if o_stats.endingroute = 4{
			dialogue[0,0] = "Kau mengkhianatiku"
			dialogue[1,0] = "Silahkan kau gunakan [Faktor Erudera] milikmu. Aku tidak peduli lagi"
			dialogue[2,0] = "Aku berubah pikiran, kau tidak akan menggunakannya"
			dialogue[3,0] = "Bagaimana? Aku sudah malas melawanmu"
			dialogue[4,0] = "Teruslah berusaha"
			dialogue[5,0] = "Payah"
			dialogue[6,0] = "Cepatlah"
			dialogue[7,0] = "Huh"
			dialogue[8,0] = "Hm"
			dialogue[9,0] = "Ayo"
			dialogue[10,0] = "Tch"
			dialogue[11,0] = "Pengkhianat"
			dialogue[12,0] = "Yah"
			dialogue[13,0] = "Cepat"
			dialogue[14,0] = "Hanya segitu?"
			dialogue[15,0] = "Sudah kuduga"
			dialogue[16,0] = "Sedikit lagi"
			dialogue[17,0] = "Yap, aku akan biarkan kau kali ini"
		}
		else if o_stats.endingroute = 5{
		}
		else if o_stats.endingroute = 6{
		}
		else if o_stats.endingroute = 7{
		}
		//		ending 1: lawan final boss, abisin minimal 1 fase healthbar dia (Neutral ending)
		//		ending 2: lawan final boss, gak nembak dia samsek (Worthy ending)
		//		ending 3: lawan final boss, mati lebih dari 15 kali (Insanity ending)
		//		ending 4: bantu final boss, trus betray dia (Chaotic ending)
		//		ending 5: bantu final boss, tunggu abis topik (True ending)
		//		ending 6: bantu final boss, diemin beberapa hari (Tier 0 Ending)
		//		ending 7: bantu final boss, mati lebih dari 15 kali (Loser ending)
		//		ending 8: make godmode/cheatmode sejak tutorial (act 0) (Cheater ending) 
		//		ending 9: make godmode/cheatmode secara berkala (act 1) (Unforgivable ending)
		//		ending 10: tamatin semua ending, trus reset (goddamn ini overdid bet ending)
		
		
		
		
		
		
		
		
		
	}
}
#endregion

//Ubah text jadi isi dialogue && nama bila ada
if instance_exists(o_dialogue){
	if !(o_stats.endingroute = 2){
		o_dialogue.text = dialogue[phase,page]
	}else{
		o_dialogue.text = dialogue[0,0]
	}
	o_ada.pagelength = array_length_2d(dialogue,phase)
}
