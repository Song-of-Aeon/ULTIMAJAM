global.enemies = {};
function enemy(name_, sprite_, hp_,  step_=c_null, draw_=draw_self, create_=c_null) constructor {
	sprite = sprite_;
	hp = hp_;
	step = step_;
	draw = draw_;
	create = create_;
	name = name_;
	global.enemies[$name_] = self;
}

function c_spawnenemy(x, y, archetype_) {
	log(archetype_);
	var chump  = instance_create(x, y, o_enemy);
	chump.hp = archetype_.hp;
	chump.name = archetype_.name;
	chump.maxhp = archetype_.hp;
	chump.sprite_index = archetype_.sprite;
	chump.step = method(chump, archetype_.step);
	chump.draw = method(chump, archetype_.draw);
	chump.archetype_ = archetype_;
	c_tilequantize(chump);
	return chump;
}



nu enemy("impostor", s_if_you, 100);
nu enemy("spawnpoint", s_impostor, 9999, c_spawnpointstep);

function c_spawnpointstep() {
	log("ha ha");
	if !instance_exists(ILLUSORY) {
		instance_create(x, y, ILLUSORY);
	} else {
		ILLUSORY.x = x;
		ILLUSORY.y = y;
	}
	kys;
}

//everybody wants to be
//my enemy