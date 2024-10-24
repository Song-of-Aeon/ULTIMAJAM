/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("H"))){
	log("trying to change player position");
	c_startrpg(u,u,5,5);
}
if(keyboard_check(ord("J"))){
	global.rpgmaking.switches[1] = true;
}
if(keyboard_check(ord("K"))){
	global.rpgmaking.switches[1] = false;
}

