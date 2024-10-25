/// @desc Function ALL FUNKIES MUNKIED TO BOSS
function pattern(step_=c_null, hp_=15, time_=60, character_="touhou", type_=SPELL.NON, difficulty_=DIFFICULTY.NULL, name_="", create_=c_null, draw_=c_null, clear_=c_null, desc_="") constructor {
	create = munction(create_);
	step = munction(step_);
	draw = munction(draw_);
	hp = hp_;
	time = time_;
	name = name_;
	type = type_;
	desc = desc_;
	character = character_;
	difficulty = difficulty_;
	//clear = munction(clear_);
	clear = clear_;
	count = 0;
	iterations = 0;
	plays = 0;
	wins = 0;
	runslost = 0;
	c_pushpattern(self, character_, difficulty_, type_);
}

//function pattern_ext(step_=[c_null, c_null, c_null, c_null], hp_=15, time_=60, character_="touhou", type_=SPELL.NON, name_="", create_=[c_null, c_null, c_null, c_null], draw_=c_null, clear=c_null, desc_="") constructor {}