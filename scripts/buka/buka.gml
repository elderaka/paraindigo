function buka(_slot){
	global.saveslot = _slot
	var _file = "save" +	string(global.saveslot) +".sav"
	if (file_exists(_file)){
		
		var _json = loadjsonfromfile(_file);
		
		//peepee poopoo le funny
		o_stats.styxisbeaten    = _json[? "peepee"]
		o_stats.arkasisbeaten   = _json[? "poopoo"]
		o_stats.terraisbeaten   = _json[? "puupuu"]
		o_stats.arkasisbeaten2  = _json[? "paapaa"]
		o_stats.siriusisbeaten  = _json[? "piipii"]
		o_stats.siriusisbeaten2 = _json[? "peepoo"]
		o_stats.bossbeaten		= _json[? "poopee"]
		o_stats.lives_			= _json[? "puupee"]
		o_stats.hp_				= _json[? "puupaa"]
		o_stats.sanity_			= _json[? "piipuu"]
		o_stats.usedcheat		= _json[? "piipoo"]
		o_stats.firsttime		= _json[? "piipee"]
		o_stats.firstbeaten		= _json[? "peepii"]
		o_stats.firsttime2		= _json[? "paapii"]
		o_stats.deathcount		= _json[? "paapee"]
		o_stats.runaway			= _json[? "paapuu"]
		o_stats.act				= _json[? "paapoo"]
		o_stats.endingroute		= _json[? "peepaa"]
		o_stats.athoughtcount	= _json[? "peepuu"]
		o_stats.hasdoneintro	= _json[? "puupii"]
		o_stats.badending		= _json[? "puupoo"]
		if instance_exists(o_cherubim){
			o_cherubim.firstinsert = _json[? "adainsert"]
			for (var i = 0; i <= 30; i++){
				o_cherubim.done[i] = _json[? "thought" + string(i)]
			}
		}
		return true;
	}
	else{
		show_debug_message("NULL")
		return false;
	}
}

function loadjsonfromfile(_filename){
	var _buffer = buffer_load(_filename);
	var _string = buffer_read(_buffer,buffer_string);
	buffer_delete(_buffer);
	var _json = json_decode(_string);
	return _json;
}