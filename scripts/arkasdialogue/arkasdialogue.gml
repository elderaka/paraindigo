changename = false
//Masukan fungsi untuk masukin fase dan halaman dari objek
phase = argument0
page = argument1
//Fungsi untuk cek apakah nama harus diganti atau tidak



#region dialogue
if instance_exists(o_stats){
	if o_stats.arkasisbeaten == false{
		if o_stats.bossbeaten == 0 {
			dialogue[0,1] = "Sepertinya aku adalah lawan pertamamu. Biarkan aku memperkenalkan diriku"
			dialogue[5,6] = "Setelah ini, kamu akan melawan dua Hakim lagi. Yaitu Sirius Rai dan Antares Rai"
			dialogue[5,7] = "Sirius Rai merupakan [Hakim Gravitasi] sementara Antares adalah [Hakim Materi]"
			dialogue[5,8] = "Tetapi kau harus hati-hati dengan mereka berdua, karena mereka berdua adalah [Penjaga Hukum]"
			dialogue[5,9] = "Terutama Sirius karena dia luar biasa kuatnya. Dia setara dengan ketua [Daemon] kami yaitu Eros Rai."
			dialogue[5,10] = "Jangan terkecoh oleh tubuh dia yang kecil karena dia merupakan penjelmaan dari suatu semesta"
			dialogue[5,11] = "Dan untuk Antares. Meskipun dia adalah [Penjaga Hukum] termuda, tetap saja dia termasuk pemegang [Hal - Ultima]"
			dialogue[5,12] = "Belum lagi ada kabar bahwa dia adalah seorang [Indigo]. Tentu saja itu membuat kekuatan dia berlipat-lipat"
			dialogue[5,13] = "Apa? Kau juga seorang [Indigo]? Pantas saja kau sangat kuat, seperti [Daemon] baru Harmonia Rai"
			dialogue[5,14] = "Tetapi hey, aku bisa bilang ke orang-orang bahwa aku baru saja melawan seorang [Indigo]!"
			dialogue[5,15] = "Yah, baiklah. Sampai jumpa lain kali, ya!"
		}else if o_stats.bossbeaten == 1{
			dialogue[0,1] = "Hmm, sepertinya aku bukanlah lawan pertamamu. Yasudahlah, biarkan aku memperkenalkan diriku"
			if o_stats.siriusisbeaten == true{
				dialogue[5,6] = "Setelah ini, kamu akan melawan satu hakim lagi. Yaitu Antares Rai"
				dialogue[5,7] = "Antares Rai adalah [Hakim Materi] sekaligus [Penjaga Hukum Materi]"
				dialogue[5,8] = "Oleh karena itu, dia seharusnya adalah [Hakim Materi] terkuat di seluruh semesta"
				dialogue[5,9] = "Maksudku, benar-benar seluruh semesta. Kau tahu bukan jika seluruh [Hukum] dan [Aturan] dipimpin oleh satu orang?"
				dialogue[5,10] = "Sama halnya seperti Sirius adalah [Penjaga Hukum Gravitasi], kau harus kuat melawan Antares Rai"
				dialogue[5,11] = "Aku baru sadar, sepertinya wajar aku kalah oleh seseorang yang telah menang melawan seorang [Penjaga Hukum]..."
				dialogue[5,12] = "Tetapi hey, aku bisa bilang ke orang-orang bahwa aku baru saja melawan seorang yang telah mengalahkan Sirius Rai"
				dialogue[5,13] = "Yah, baiklah. Sampai jumpa lain kali, ya!"
			}else if o_stats.terraisbeaten == true{
				dialogue[5,6] = "Eh, kamu sudah melawan Antares Rai duluan? Dan katamu dia digantikan oleh Terra Rai?"
				dialogue[5,7] = "Kabar kau mengalawannya saja sudah luar biasa. Apalagi kamu berhasil mengalahkanya"
				dialogue[5,8] = "Jika aku tidak salah, dia itu yang dirumorkan ras Tetrahedrolion terakhir, bukan?"
				dialogue[5,9] = "Dia adalah seorang [Indigo], lho! Dan kekuatan dia setara dengan Harmonia Rai yang juga merupakan seorang [Indigo]"
				dialogue[5,10] = "Apa? Kau mengenal mereka? Dan kau juga merupakan seorang [Indigo]? Pantas saja."
				dialogue[5,11] = "Pantas saja... Kelompok mereka itu termasuk orang-orang terkuat di semestaku lho!"
				dialogue[5,12] = "Yang pasti ada Terra Rai, Harmonia Rai, Aliyu Claire yang merupakan [Penguasa Aturan Jiwa], Petra Tetrahedrolion, dan juga yang paling baru Antares Rai"
				dialogue[5,13] = "Ups, sepertinya aku sudah ngomong terlalu banyak. Ya intinya setelah ini kamu akan melawan Sirius Rai"
				dialogue[5,14] = "Tetapi jika kau sekuat para [Indigo] dari Semestaku, seharusnya dia tak sesulit yang kamu bayangkan"
				dialogue[5,15] = "Yah, baiklah. Sampai jumpa lain kali, ya!"
			}
		}
		else if o_stats.bossbeaten == 2{
			dialogue[0,1] = "Yah, sepertinya aku adalah lawan terakhirmu. Yasudahlah, biarkan aku memperkenalkan diriku"
			dialogue[5,6] = "Apa? Kamu telah mengalahkan Sirius Rai dan Antares Rai?"
			dialogue[5,7] = "Sepertinya dirikulah yang melawan orang yang salah"
			dialogue[5,8] = "Mereka berdua itu adalah para [Penjaga Hukum], lho!"
			dialogue[5,9] = "Tunggu, Terra Rai katamu? Tetap saja! Terra Rai itu sebenarnya lebih kuat dari Antares Rai!"
			dialogue[5,10] = "Aku tahu hukum nirwana kali ini berbeda dari umumnya. Tetapi, tetap saja kekuatan mereka tidak akan melemah karena itu"
			dialogue[5,11] = "Tunggu dulu, kamu adalah seorang [Indigo]? Pantas saja kau bisa sekuat ini"
			dialogue[5,12] = "Sepertinya ini sangat menarik. Ayo, lain kali aku ingin mencoba melawanmu lagi."
			dialogue[5,13] = "Tetapi, lain kali coba gunakan [Hukum Waktu] untuk melawanku, ya!"
			dialogue[5,14] = "Sampai jumpa lain kali"
		}
		dialogue[0,0] = "Halo disana, bagaimanakah tempat ini? Bagus bukan?"
		
		dialogue[0,2] = "Namaku adalah Arkas Rai, seorang [Daemon] sama seperti Styx Tai. Itulah mengapa aku memakai topeng seperti dia"
		dialogue[0,3] = "Sebenarnya, para Daemon tidak boleh membeberkan nama mereka ketika kami memakai topeng"
		dialogue[0,4] = "Tetapi, karena tempat ini adalah Nirwana aku boleh-boleh saja memberitahukannya"
		dialogue[0,5] = "Lagipula aku merupakan salah satu dari tiga mentormu, bukan?"
		dialogue[0,6] = "Baiklah, aku harap kamu sudah tahu bahwa aku mewakilkan [Hukum Ruang dan Waktu]."
		dialogue[0,7] = "Apakah kau sudah siap?"
		dialogue[0,8] = "Sudah cukup basa basi dan marilah kita berdansa"
		 
		dialogue[1,0] = "Bagaimana? maaf aku kurang paham tentang aturan Nirwana kali ini. Tetapi sistemnya masih sama, bukan?"
		dialogue[1,1] = "Maaf jika tadi terlalu kaku karena aku masih pemanasan! Sekarang lihatlah"
		dialogue[2,0] = "Kekuatan [Ruang dan Waktu] adalah kekuatan yang absolut"
		dialogue[3,0] = "Argh, aku tidak tahu harus memakai apa lagi"
		dialogue[3,1] = "Tolong berikan aku waktu berfikir sejenak"
		dialogue[4,1] = "Tunggu dulu... benar juga, mengapa aku tidak berpikir seperti itu"
		dialogue[4,0] = "Yah... karena ini Nirwana, seharusnya aku diperbolehkan menggunakan ini"
		dialogue[5,0] = "Ah sial... Sepertinya diriku belum juga berkembang seperti yang lainnya"
		dialogue[5,1] = "Seharusnya aku adalah mentormu. Tetapi aku malah dikalahkan oleh dirimu..."
		dialogue[5,2] = "Bahkan setelah aku mencoba melawan [Hukum], aku masih lemah"
		dialogue[5,3] = "Yasudahlah, itu berarti aku akan lanjut latihan di Nirwana ini seperti dirimu."
		dialogue[5,4] = "Lain kali, tolong lawan aku lagi ya! dan kalau bisa gunakan [Hukum Waktu] ketika melawanku."
		dialogue[5,5] = "Sekarang mari kita lihat, kamu akan melawan siapa lagi ya."
	} else if o_stats.arkasisbeaten == true{
		if o_stats.siriusisbeaten = false{
		dialogue[0,0] = "Hm? Kau kembali kesini lagi? Bagaimana dengan Sirius Rai dan juga Antares Rai?"
		dialogue[0,1] = "Apakah kau terpesona denganku karena itu kau ingin melawanku lagi?"
		dialogue[0,2] = "Baiklah! Ayo kita mulai!"
		dialogue[5,0] = "Ah sial, aku kalah lagi"
		dialogue[5,1] = "Tapi tak apa sih. Karena aku juga ingin berkembang pula"
		dialogue[5,2] = "Ah, aku masih kesal!"
		dialogue[5,3] = "Kamu baru saja menjadi [Hakim] tetapi aku dikalahkan oleh dirimu dua kali!"
		dialogue[5,4] = "Semoga saja Ceres Rai tidak mengetahui hal ini... aku tidak ingin menjadi bahan olokannya lagi"
		dialogue[5,5] = "Baiklah, aku mohon untuk kamu segera melihat dua hakim lainnya, ya! Aku akan tunggu kabarmu lagi nanti"
		dialogue[5,6] = "Sampai jumpa lain waktu"
		}else if o_stats.siriusisbeaten = true{
			dialogue[0,0] = "Aku sudah mendengarkannya dari Sirius Rai. Sepertinya Alice dalam bahaya, bukan?"
			dialogue[0,1] = "Aku tidak tahu apa yang harus dilakukan. Tetapi, mari kita berlatih terlebih dahulu!"
			dialogue[0,2] = "Siapa tahu kita bisa merasakan suatu gejala yang tidak enak"
			dialogue[5,0] = "Bagaimana? Apakah kau merasakan sesuatu?"
			dialogue[5,1] = "Hmmm.... Aku sih tidak merasakan yang aneh"
			dialogue[5,2] = "Sial, aku kesini memang jujur karena ingin berlatih. Aku tidak tahu kalau ternyata keadaan separah ini"
			if o_stats.siriusisbeaten2 == false{
				dialogue[5,3] = "Coba kau menemui Sirius lagi. Mungkin saja kita bisa mendapatkan beberapa clue"
			} else if o_stats.siriusisbeaten2 == true{
				dialogue[5,3] = "Tunggu dulu, aku merasakan sesuatu yang aneh..."
				dialogue[5,4] = "Jika intuisiku benar, sepertinya Alice dalam bahaya"
				dialogue[5,5] = "Yah... meski intuisiku tidak sehebat seorang [Indigo], aku masih mempercayainya. Ayo kita pergi!"
			}
		}
	}
}
#endregion

//Ubah text jadi isi dialogue && nama bila ada
if instance_exists(o_dialogue){
	o_dialogue.sprite = 1
	o_dialogue.text = dialogue[phase,page]
	o_arkas.pagelength = array_length_2d(dialogue,phase)
	if changename = true{
		o_dialogue.name = name[phase,page]
		changename = false
	}
}
