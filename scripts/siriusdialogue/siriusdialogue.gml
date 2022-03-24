changename = false
//Masukan fungsi untuk masukin fase dan halaman dari objek
phase = argument0
page = argument1
changename = argument2
//Fungsi untuk cek apakah nama harus diganti atau tidak



#region dialogue
if instance_exists(o_stats){
	if o_stats.siriusisbeaten == false{
		if o_stats.bossbeaten == 0 {
			dialogue[0,1] = "Aku adalah lawan pertamamu, ya. Aku kira kau telah melawan Arkas Rai"
			dialogue[0,2] = "Yah, aku tidak terlalu peduli sih. Tetapi sepertinya lebih baik jika kamu mencoba untuk lawan dia terlebih dahulu"
			dialogue[5,7] = "Kau masih mempunyai dua lawan lagi. Arkas Rai dan Antares Rai"
			dialogue[5,8] = "Tolong lawan mereka dan tanyakan kepada mereka apakah mereka melihat instansi lain selain mentor kamu"
			dialogue[5,9] = "Dan jangan lupa untuk melawanku kembali menggunakan [Hukum Gravitasi]. Karena kamu masih latihan di Nirwana, bukan?"
			dialogue[5,10] = "Selamat berjuang untuk menjadi [Hakim] baru"
		}else if o_stats.bossbeaten == 1{
			dialogue[0,1] = "Sudah kuduga. Meskipun aku tidak bisa melihat garis waktu dunia ini, intuisiku masihlah kuat. Aku adalah lawan keduamu, bukan?"
			if o_stats.arkasisbeaten == true{
				dialogue[0,2] = "Bagaimana Arkas Rai? [Daemon] itu meski masih muda, seharusnya adalah lawan yang cocok untuk dirimu"
				dialogue[5,8] = "Arkas Rai adalah seorang [Daemon], bukan? Seharusnya dia juga ikut serta untuk mencari Abnormalitas disini"
				dialogue[5,9] = "Tetapi untuk [Daemon], mereka lebih fokus untuk menangkap orang tersebut"
				dialogue[5,10] = "Arkas Rai memang tidak sehebat [Daemon] lainnya. Tetapi dia memiliki intuisi yang tajam apabila itu tentang mencari Abnormalitas"
				dialogue[5,11] = "Setelah ini, tolong lawan Antares Rai karena dia juga merupakan seorang [Penjaga Hukum] seperti diriku"
				dialogue[5,12] = "Dan setelah melawan mereka semua, tolong lawan kami kembali dengan [Hukum] kami masing-masing"
				dialogue[5,13] = "Selamat berjuang dan semoga berhasil"
			}else if o_stats.terraisbeaten == true{
				dialogue[0,2] = "Tetapi aku mengira kamu telah melawan Arkas Rai. Tapi tak apa, karena Antares Rai juga cukup kuat untuk melawanmu"
				dialogue[5,8] = "..."
				dialogue[5,9] = "Antares Rai digantikan oleh Terra Rai?"
				dialogue[5,10] = "..."
				dialogue[5,11] = "Nirwarna ini..."
				dialogue[5,12] = "Hanya ada satu penjelasan tentang abnormalitas ini"
				dialogue[5,13] = "Aku harus mencari dia"
			}
		}else if o_stats.bossbeaten == 2{
			dialogue[0,1] = "Sepertinya kau telah mengalahkan Arkas Rai dan Antares Rai"
			dialogue[0,2] = "Mengesankan"
			dialogue[5,6] = "Abnormalitas di dunia ini sungguh mengkhawatirkan."
			dialogue[5,7] = "Aku tidak bisa menebak cabang waktu di dunia ini sama sekali"
			dialogue[5,8] = "..."
			dialogue[5,9] = "Antares Rai digantikan oleh Terra Rai?"
			dialogue[5,10] = "...Sial"
			dialogue[5,11] = "Tolong lawan aku kembali mengunakan [Hukum Gravitasi] untuk mencari tahu sumber Abnormalitas ini"
			dialogue[5,12] = "Sekian terima kasih"
		}
		dialogue[0,0] = "Hmmm... Halo"
		
		dialogue[0,3] = "Kembali ke topik. Seharusnya kau telah mengenalku dari Styx Rai, Arkas Rai, atau Antares Rai. Namaku adalah Sirius Rai"
		dialogue[0,4] = "Dan aku adalah [Penjaga Hukum Gravitasi]. Yang berarti aku bukanlah [Hakim] biasa."
		dialogue[0,5] = "Aku dengar bahwa dunia Isagel itu terbuat atas imajinasi dirimu. Dan terlebih lagi kamu mampu menjadi calon Hakim dari dunia imajinermu itu"
		dialogue[0,6] = "Cukup mengesankan bagiku. Kau adalah abnormalitas yang tentunya berguna untuk mengungkapkan dunia ini"
		dialogue[0,7] = "Mari kita lihat apa saja kemampuanmu di Nirwana ini"
		dialogue[1,0] = "Meskipun kekuatanku sebagai seorang [Hakim] terasa terbatas di dunia ini, setidaknya aku masih bisa bertarung"
		dialogue[1,1] = "Sungguh, ada apa dengan dunia ini"
		dialogue[2,0] = "Di malam yang paling gelap, benda yang paling bersinar adalah bintang di langit"
		dialogue[2,1] = "Tetapi, itu bukan berarti bahwa bintang hanya akan bersembunyi di siang hari yang cerah"
		dialogue[2,2] = "Seni milikmu adalah gelombang perusak partikel. Kau tidak akan bisa meruntuhkan bintang-bintangku"
		dialogue[3,0] = "[Hukum] masih berguna di dunia ini. Tetapi aku masih ingin mencoba melihat batasnya"
		dialogue[4,0] = "Abnormalitas, yang dapat ditranslasi secara sempurna. Jika bukan [Sang A] yang membuatnya, maka siapa lagi?"
		dialogue[5,0] = "Menarik. Bahkan kekuatan [Kreationis] masih berfungsi disini."
		dialogue[5,1] = "Ada alasan tertentu mengapa aku ingin menjadi mentor Nirwana-mu"
		dialogue[5,2] = "Karena apakah kau sadar? Dunia ini berbeda dari umumnya."
		dialogue[5,3] = "Dan kau sendiri sadar bukan? Bahwa Nirwana ini saja berbeda dengan duniamu sebelumnya"
		dialogue[5,4] = "Selain menjadi [Penjaga Hukum Waktu], tugasku adalah pemberantas Abnormalitas yang tak terkendalikan."
		dialogue[5,5] = "Dan aku tidak bisa menetapkan bahwa dirimulah yang menyebabkan Abnormalitas ini."
		dialogue[5,6] = "Mungkin saja... tidak... dunia ini berada jauh dari genggaman seorang [Kreationis]"
		dialogue[5,7] = "Jika kau menemukan orang mencurigakan yang tidak seharusnya berada disini, harap melapor kepadaku"
		}
		if o_stats.siriusisbeaten == true{
			dialogue[0,0] = "..."
			dialogue[0,1] = "Mari kita mulai"
			dialogue[5,0] = "..."
			if o_stats.arkasisbeaten2 == false{
				dialogue[5,1] = "Tolong lawan Arkas lagi"
			}else if o_stats.arkasisbeaten2 == true{
				dialogue[5,1] = "Tolong cek Alice"
			}
		}
}
#endregion
#region changename

#endregion

//Ubah text jadi isi dialogue && nama bila ada
if instance_exists(o_dialogue){
	o_dialogue.sprite = 3
	o_dialogue.text = dialogue[phase,page]
	o_sirius.pagelength = array_length_2d(dialogue,phase)
	if changename = true{
		o_dialogue.name = name[phase,page]
		changename = false
	}
}
