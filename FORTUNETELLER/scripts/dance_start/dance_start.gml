function dance_start(song_, pattern_) {
	var chump = observer_create(o_melodychaser);
	music_set(song_);
	chump.mysong = song_;
	if song_.offset < 0 {
		chump.negoffset = song_.offset;
	} else {
		chump.offset = song_.offset;
	}
	textbox_create(txt_empty);
	return startpattern(pattern_);
}

function dance_stop() {
	with o_textbox {
		if msgscript == txt_empty kys;
	}
	instance_destroy(o_melodychaser);
	music_set(mus.null);
}