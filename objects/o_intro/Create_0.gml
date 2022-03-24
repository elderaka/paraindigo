/// @description splash
alpi = 1
timer = 0
resettimer = false
text = "Null"
page = 0
skip = false
intro[0] = "..."
intro[1] = "Apakah kau bisa mendengarku?"
intro[2] = "Isagel, apakah kau disana"
intro[3] = "Biarkan aku menceritakan, bagaimana semesta diciptakan"
intro[4] = "Dahulu kala, semesta diciptakan oleh [Sang A]"
intro[5] = "Tetapi, tatkala itu semesta sangatlah tidak stabil"
intro[6] = "Karena itu, [Sang A] menciptakan Hukum dan Peraturan"
intro[7] = "Hukum yang didasarkan oleh Filosofi Semesta"
intro[8] = "Dan Peraturan yang didasarkan oleh Psikologi Makhluk Hidup"
intro[9] = "Hanya dengan dua Faktor itu lah semesta dapat berjalan dengan baik"
intro[10] = "Namun, terkadang ada pula Faktor lain yang dapat menginterferensi Hukum Semesta"
intro[11] = "Dan Faktor tersebut akan menyebabkan Abnormalitas"
intro[12] = "Isagel Rai adalah sebuah Abnormalitas"
intro[13] = "Faktor yang terdapat dalam dirimu hanya akan membawa malapetaka"
intro[14] = "Oleh karena itu, para Hakim akan mencoba menghakimi dirimu"
intro[15] = "Aku disini juga akan menghakimi dirimu, menggunakan Peraturan yang kau buat"
intro[16] = "Akan aku tunggu dirimu, di dalam dunia buatanmu"
intro[17] = "Nirwana Pancarona"
intro[18] = ""
charcount = 0
bgm = audio_play_sound(introbgm,2,false)
ended = false
river = audio_play_sound(introriver,3,true)
audio_sound_gain(river,0,1)
audio_pause_sound(river)
monol = audio_play_sound(intromonologue,4,true)
audio_sound_gain(monol,0,1)
audio_pause_sound(monol)
check = 0
pagelength = 0
back = false
page = 0
dodialogue = false