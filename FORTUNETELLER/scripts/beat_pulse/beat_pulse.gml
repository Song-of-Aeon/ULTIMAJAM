function beatpulse(lane, type) {
	log(lane, type);
	global.beatstates[lane] = type;
	//global.beatbool = true;
}

function bp(lane, type=NOTES.HIT) {
	//log(global.beatstates[lane]);
	return type==all ? global.beatstates[lane] : global.beatstates[lane] == type;
	//log(global.beatstates);
	//return global.beatstates[lane];
	//return global.beatbool;
}

global.beatstates = array_create(4);
//global.beatbool = false;

//global.beatstates.lanes[0] = depth;