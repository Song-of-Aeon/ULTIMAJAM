randomize();

global.gw = 512;
global.gh = 288;
global.ratio = global.gh/global.gw;
global.textguy = {};
global.fading = false;
global.volume = 100;
global.music = 100;
global.kunctions = {};
global.enemies = {};
//global.gamesize = new vec2();
//window_set_size(global.gamesize.x, global.gamesize.y);

global.marineconstellation = font_add_sprite_ext(fts_marineconstellation,
	"!\"#$%&'()*+,-"+
	"./0123456789:"+
	";<=>?@ABCDEFG"+
	"HIJKLMNOPQRST"+
	"UVWXYZ[\\]^_`a"+
	"bcdefghijklmn"+
	"opqrstuvwxyz{"+
	"|}~ÁÉÍÓÚÄËÏÖÜ"+
	"áéíóúäüïöëÑñı"+
	"ẞßÆæ¡¿♫♪☯東方青赤"+
	"紫果世外♥¬ඞ⬠⬏†‡¦§"+
	"⑴⑵⑶⑷⑸⑹⑺⑻⑼⑽⑾⑿±"+ //f keys
	"０１２３４５６７８９☺☹�"+ //numpad
	"⓿❶❷❸❹❺❻❼❽❾❿��"+ //fez numbers
	"ＡＢＣＤＥＦＧＨＩＪＫＬＭ"+ //fez script
	"ＮＯＰＱＲＳＴＵＶＷＸＹＺ"+ //fez script
	"⓪①②③④⑤⑥⑦⑧⑨�⭠⭣"+ //balls
	"⭡⭢⮡⮽⮠⭰⭲⭱⭳⬚⮔　「"+
	"」"+
	""+
	""+
	""+
	""+
	"",
true, 2);
#macro ft_marineconstellation global.marineconstellation


enum DESTROYSHAPE {
	CIRCLE,	
	EVERYTHING,
	UP,
	DOWN,
	RANDOM,
	SPIRAL,
}

global.version = "ver. 0.7." + string(GM_build_date);
global.gameobjectvariables = [
	"speed", "direction", "xprevious", "yprevious", "image_index", "image_xscale", "image_yscale", "image_blend", "image_index"
];

global.gmtypes = [
	"number",
	"string",
	"bool",
	"int32",
	"int64",
	"ptr",
	"undefined",
	"array",
	"vec3",
	"vec4",
	"method",
	"struct",
	"ref",
	"null",
	"unknown"
];

/*globalvar makeroomroom;
makeroomroom = room_add();
room_goto(makeroomroom);
observer_create(o_mapper);
observer_create(o_persistent);*/



//struct[$""] = 5;