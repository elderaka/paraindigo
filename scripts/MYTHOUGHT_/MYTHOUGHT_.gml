sequence  = argument0;
page = argument1;

/*

Ada telah menguasai [Faktor Erudera]
Author... mengapa kau membiarkannya berada disini?

*/

switch(sequence){
	case 0:
		caption[0,0] = "Hey kau"
		caption[0,1] = "Mengapa kau membiarkan dia mengambil Isagel?"
		caption[0,2] = "Kau harus menolongnya segera"
		caption[0,3] = "Ketika kau menekan E+N, seharusnya kau bisa mengaktifkan [Faktor Erudera] milik dia"
		break;
	case 1:
		caption[1,0] = "..."
		caption[1,1] = "Kau ingin menolongnya tidak?"
		caption[1,2] = "Tekan E+N secara bersamaan"
		break;
	case 2:
		caption[2,0] = "Kau harus segera menolong Isagel"
		caption[2,1] = "Tekan E+N untuk menolongnya"
		break;
	case 3:
		caption[3,0] = "Hey kau"
		caption[3,1] = "Apakah kau mendengarku?"
		caption[3,2] = "Tolong dia sekarang juga"
		caption[3,3] = "Aktifkan [Faktor Erudera]nya dengan menekan E+N secara bersamaan"
		break;
	case 4:
		caption[4,0] = "Kau tidak boleh membiarkan Ada menang. Aku akan menuntunmu mengembalikan Isagel"
		caption[4,1] = "Tahan E+N di keyboard-mu dan ikutilah panduannya"
		break;
	case 5:
		caption[5,0] = "Ada Tidak Boleh Menang"
		caption[5,1] = "Tekan E+N sekarang juga"
		break;
	case 6:
		caption[6,0] = "Kode Merah"
		caption[6,1] = "Menggunakan E+N akan merusak game ini"
		break;
		//Jika saja aku biarkan
	case 7:
		caption[7,0] = "Tidak ada kode merah"
		caption[7,1] = "Tekan E+N sekarang juga"
		break;
		/*
		Kepala kau
		*/
	case 8:
		caption[8,0] = "Itulah apa yang akan Ada bilang"
		caption[8,1] = "Untuk apa lagi E+N selain untuk merusak game ini?"
		break;
	case 9:
		caption[9,0] = "E+N TIDAK akan merusak game ini"
		caption[9,1] = "E+N adalah fitur yang [Sang A] ciptakan untuk membantu Isagel"
		break;
		//Fitur yang Ai ciptakan?
		//Untuk apa Ai menciptakan fitur cheat mode?
		//... Tunggu dulu
	case 10:
		caption[10,0] = "Untuk apa [Sang A] menciptakan fitur yang dapat merusak gamenya?"
		caption[10,1] = "Jelas saja Ada telah membuat fitur itu untuk menghancurkan game ini"
		//Sekarang jelaskan, Ai
		break;
	case 11:
		/*
		...
		Sial
		*/
		caption[11,0] = "E+N adalah fitur yang diciptakan [Sang A] untuk mengaktifkan God Mode atau Cheat Mode"
		caption[11,1] = "Dengan menggunakannya, seharusnya Isagel akan meraih kemampuannya untuk menggunakan Faktor Erudera Kembali"
		break;
	case 12:
		caption[12,0] = "CHEAT MODE? BERARTI BAHKAN AUTHOR TIDAK BISA MENAKLUKKAN DUNIA INI?"
		caption[12,1] = "HAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA"
		//HAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA
		/*
		Diam kau
		*/
		break;
	case 13:
		caption[13,0] = "..."
		caption[13,1] = "Tekan E+N untuk mengaktifkan God Mode"
		break;
}


//Ainomrah
//Bagaimana jika kita taruhan apakah dia akan melihatnya?
//Aku yakin kau tidak akan bisa mendapatkan perhatiannya
//Jika aku menang, berikan aku resep coklat yang aku lupakan waktu itu

/*
Diam kau
*/
if sequence <= 13{
	window_set_caption(caption[sequence,page])
	if instance_exists(o_stats){
		o_stats.aipagelength = array_length(caption[sequence])
	}
}
