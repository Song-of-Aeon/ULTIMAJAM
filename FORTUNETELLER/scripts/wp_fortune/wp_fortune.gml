weapongen({
	step: function(input, alt) {
		if !me.aerial && !active {
			usable = true;
		}
		if input.hit && usable {
			if !me.aerial me.y--;
			if me.dir != -1 {
				setdir = distabs(me.dir, 8);
				active = length;
			} else {
				//c_clearradius(80);
			}
			usable = false;
		}
		if active {
			me.spriteindex = s_kyblock;
			me.spd.h = setdir.x;
			me.spd.v = setdir.y;
			goingup = !me.spd.v;
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
		if --active == 0 {
			me.spd.h *= .3;
			me.spd.v *= .3;
		}
	},
	poststep: function() {
		if array_length(me.xtouching) && active {
			active = false;
			me.spd.h = -me.spd.h*.4;
		}
		if array_length(me.ytouching) && active {
			active = false;
			me.spd.v = -8*itneg(goingup)*.4;
			me.aerial = true;
			usable = true;
			me.y += me.spd.v;
			//me.y -= 5;
		}
		//me.x += me.spd.h;
		
	},
	draw: function() {
		
	},
	ammo: 0,
	ammomax: 0,
	name: "fortune",
	sprite: s_mistake,
	active: 0,
	length: 14,
	setdir: noone,
	goingup: false,
});