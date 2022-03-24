function simpan(){
	var _map = ds_map_create();
	
	//peepee poopoo le funny
	_map[? "peepee"] = o_stats.styxisbeaten;
	_map[? "poopoo"] = o_stats.arkasisbeaten;
	_map[? "puupuu"] = o_stats.terraisbeaten;
	_map[? "paapaa"] = o_stats.arkasisbeaten2;
	_map[? "piipii"] = o_stats.siriusisbeaten;
	_map[? "peepoo"] = o_stats.siriusisbeaten2;
	_map[? "poopee"] = o_stats.bossbeaten;
	_map[? "puupee"] = o_stats.lives_;
	_map[? "puupaa"] = o_stats.hp_;
	_map[? "piipuu"] = o_stats.sanity_;
	_map[? "piipoo"] = o_stats.usedcheat;
	_map[? "piipee"] = o_stats.firsttime;
	_map[? "peepii"] = o_stats.firstbeaten;
	_map[? "paapii"] = o_stats.firsttime2;
	_map[? "paapee"] = o_stats.deathcount;
	_map[? "paapuu"] = o_stats.runaway;
	_map[? "paapoo"] = o_stats.act;
	_map[? "peepaa"] = o_stats.endingroute;
	_map[? "peepuu"] = o_stats.athoughtcount;
	_map[? "puupii"] = o_stats.hasdoneintro;
	_map[? "puupoo"] = o_stats.badending;
	if instance_exists(o_cherubim){
		_map[? "adainsert"] = o_cherubim.firstinsert
		for (var i = 0; i <= 30; i++){
			_map[? "thought" + string(i)] = o_cherubim.done[i]
		}
	}
	var _string = json_encode(_map);
	savestringtofile("save" +	string(global.saveslot) +".sav", _string);
	show_debug_message(_string);
	
	ds_map_destroy(_map);
}
function savestringtofile(_filename, _string){
	var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed,1);
	buffer_write(_buffer,buffer_string,_string);
	buffer_save(_buffer,_filename);
	buffer_delete(_buffer);
}