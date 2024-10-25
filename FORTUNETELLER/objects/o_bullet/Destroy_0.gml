/// @description Insert description here
// You can write your code in this editor
/*repeat(20){
	instance_create(x,y,o_particle);
}*/

munction(despawn)();
if !is_oob() && alpha > .1 && !particling {
	var guy = Particle(x, y);
	guy.color = color;
	guy.size = damage*2+2;
	guy.spd = spd/2;
	guy.dir = dir;
	
	//instance_change()?????????????
} else if MadeAGlobalDotParticleIncrement global.particles--;