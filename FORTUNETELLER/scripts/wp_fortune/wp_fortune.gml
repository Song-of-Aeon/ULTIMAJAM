weapongen({
	step: function(input, alt) {
		if input.hit {
			//if me.dir != -1 {
				setdir = distabs(me.dir, 4);
			//}
			active = length;
		}
		if active {
			me.spd.h = setdir.x;
			me.spd.v = setdir.y;
			var friend = collision_rectangle(me.x-1.5 tiles, me.y-1.5 tiles, me.x+1.5 tiles, me.y+1.5 tiles, o_enemy, false, true);
			if friend != noone {
				//c_clearradius(80);
				active = false;
				me.grabbing = friend;
				me.release = 0;
				friend.stun = true;
				me.state = munction(function() {
					if !instance_exists(grabbing) {
						state = st_fortune;
						exit;
					}
					release++;
					if down.hit {
						//c_clearradius(80);
						grabbing.direction = 270;
						grabbing.speed = 5;
						spd.v = -4;
						state = st_fortune;
					}
					if release >= 20 {
						spd.h = 1.4*itneg(grabbing.x<x);
						spd.v = -1.6;
						state = st_fortune;
						grabbing.spd.h = 1.4*itneg(grabbing.x>x);
						grabbing.spd.v = -1.6;
						grabbing.stun = false;
					}
				});
			}
		}
	},
	draw: function() {
		
	},
	ammo: 0,
	ammomax: 0,
	name: "fortune",
	sprite: s_mistake,
	active: 0,
	length: 35,
	setdir: noone,
});