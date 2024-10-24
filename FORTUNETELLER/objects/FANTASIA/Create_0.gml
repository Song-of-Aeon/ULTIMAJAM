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
	wp.fortune,
];
jumpspeed = 4;
grav = .21;
accel = .1;
frict = .26;
airaccel = .04;
airfrict = 0;
walkspeed = 2.3;
leniance = 10;

state = st_fortune;
drawstate = st_fortunedraw;

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

camera_set_view_target(view_camera[0], self);
camera_set_view_border(view_camera[0], MIDWID, MIDHEI);