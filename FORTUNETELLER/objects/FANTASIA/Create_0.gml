c_input();
count = 0;

spd = {
	h: 0,
	v: 0,
	d: 0,
}
espd = {
	h: 0,
	v: 0,
	d: 0,
}
defense = 0;
//log(global.weapons)

cameratarg = new vec2();
cameradelay = 0;
wingpos = [
	new vec2(),
	new vec2(),
	new vec2(),
	new vec2(),
	new vec2(),
	new vec2(),
	new vec2(),
	new vec2(),
]

grav = .1;
leniance = 0;
lencount = 3;
aerial = false;
hp = 10;
maxhp = 100;
dir = 0;
inv = 0;

eqwp = 0;
altpos = 0;


sprites = {
	idle: s_ky,
	walk: s_ky,
	up: s_ky,
	upwalk: s_ky,
	down: s_ky,
	jump: s_kyjump,
}
/*sprites = {
	idle: s_kyblock,
	walk: s_kyblock,
	up: s_kyblock,
	upwalk: s_kyblock,
	down: s_kyblock,
	jump: s_kyblock,
}*/
sprite_index = s_kyblock;
stuff = [
	wp.coin,
];
grav = .16;
leniance = 12;
accel = .1;
airaccel = .04;
frict = .14;
airfrict = .01;
walkspeed = 1.7;
jumpspeed = 2;
state = st_ky;
drawstate = st_kydraw;

faceangle = 0;
spriteindex = 0;
imageindex = 0;
//actionstate = st_7
touchers = [];
xdraw = -100;
ydraw = 310;
global.count = 0;
globalvar me;
me = self;
//instance_create(0, 0, o_mapmanager);

//lilystats
/*

*/

climber = scriptable_create(function() {
	var ytouching = move_and_collide(0, me.y-y, o_solid);
	x = me.x;
	y = me.y;
	var empttouching = place_meeting(x, y-4, o_solid);
	if array_length(ytouching) && !empttouching && sign(ytouching[0].x-x) == me.hput {
		log("climbed");
		me.spd.v = -3.35;
		me.leniance = 0;
	}
}, c_null);
climber.sprite_index = s_climbbox;
climber.x = x;
climber.y = y;

hopper = scriptable_create(u, c_null);
hopper.sprite_index = s_hopbox;
hopper.x = x;
hopper.y = y;

antihopper = scriptable_create(function() {
	c_input();
	var hoptouching;
	with me.hopper {
		x = me.x;
		y = me.y;
		hoptouching = instance_place(x, y, o_solid);
	}
	x = me.x;
	y = me.y;
	var xtouching = instance_place(x, y, o_solid);
	//log(array_length(xtouching), array_length(hoptouching));
	if !xtouching && hoptouching && sign(hoptouching.x-x) == me.hput {
		if c > 8 && !me.aerial && !me.down.hold {
			log("hopped");
			me.spd.v = -2.35;
			me.leniance = 0;
			count = 0;
		}
	} else count = 0;
}, c_null);
antihopper.sprite_index = s_antihopbox;
antihopper.x = x;
antihopper.y = y;

//measure intensity of whats going on. out of ten.
tension = 0;

chaser = scriptable_create(function() {
	c
	pos.x = lerp(
		pos.x,
		me.spd.h*WIDTH*.045-me.image_xscale*WIDTH*.055+
		easemult(ac_sin, count, 18 sec-me.tension sec, WIDTH*.01+me.tension*WIDTH*.005),
		.01+
		easemult(ac_sin, count, 300, .005)+me.tension*.05
	);
	var chmy = HEIGHT*.08; //camera height multiplier y
	var choy = HEIGHT/6; //camera height offset y
	pos.y = lerp(
		pos.y,
		me.spd.v*chmy-choy+
		easemult(ac_sin, count, 16 sec-me.tension sec, HEIGHT*.04+me.tension*HEIGHT*.02),
		.013
	);
	x = lerp(me.x+pos.x, x, .15);
	y = lerp(me.y+pos.y, y, .15);
});
chaser.x = x;
chaser.y = y;
chaser.pos = new vec2();

camera_set_view_target(view_camera[0], chaser);
camera_set_view_border(view_camera[0], MIDWID, MIDHEI);

