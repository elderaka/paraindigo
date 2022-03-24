boss_timer = 0;
pagelength = 1
page = 0;
dodialog = false
thoughtcount = o_stats.athoughtcount;
betraywarning = 0;
forgiven = false
loginthought = true
firstinsert = true
buka(global.saveslot)
if firstinsert{
	for (var i = 0; i <= 30; i++){
		done[i] = "0"
	}
	firstinsert = false
}
dowarning = false
doforgive = false
skip_timer = 0;
thought_timer = 0;
athought_timer = 0;
ihavethought = false;
nextthought = random_range(10,15)
randomthought = round(random_range(1,29))