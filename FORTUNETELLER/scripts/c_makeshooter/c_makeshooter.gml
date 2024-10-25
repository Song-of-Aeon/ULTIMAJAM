/**
@function c_makeenemy(x,y,hp,archetype,step,drops)
@param {Real} x 
@param {Real} y 
@param {Real} hp 
@param {Struct} archetype 
@param {Any} step_
*/
function c_makeenemy(x, y, hp, archetype=en.fairy, step_=c_null, drops_=2, draw_=c_null) {
	var fairly = instance_create(x, y, o_enemy, "instances");
	fairly.maxhp = hp;
	fairly.hp = hp;
	fairly.sprite_index = archetype.sprite;
	fairly.patterns[0] = new pattern(step_, u, archetype.draw);
	fairly.draw = archetype.draw;
	fairly.drops = drops_;
	fairly.seed = new rng(global.rngsource.cells);
	fairly.owner = self;
	global.rngsource.cells.next(0);
	return fairly;
}

/*function enemy(name_, sprite_, draw_=draw_self) constructor {
	sprite = sprite_;
	draw = munction(draw_);
	variable_struct_set(global.enemies, name_, self);
}
*/