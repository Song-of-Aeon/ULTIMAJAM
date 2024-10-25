function st_bluestop() {
	var returnable = false;
	if !(left || down || up || right) return false;
	if !inv {
		takingdamage = ow.damage;
		if takingdamage > hp {
			state = st_deathbomb;
			takingtype = ow.type;
			
			if ow.destructible && ow.object_index != o_hitscan {
				instance_destroy(ow);
			}
		} else {
			if !c_dohook(hooks.onhit, [id, ow]) {
				var osdhufji = max(takingdamage-defense, 1);
				//STATS.damagetaken += osdhufji;
				se_play(snd_hurt);
				hp -= osdhufji;
				c_inv(invtime);
				c_screenshake(osdhufji, inv/2);
			}
		}
		returnable = true;
	}
	if ow.destructible {
		instance_destroy(ow);
	}
	return returnable;
}

function st_orangego() {
	var returnable = false;
	if (left || down || up || right) return false;
	if !inv {
		takingdamage = ow.damage;
		if takingdamage > hp {
			state = st_deathbomb;
			takingtype = ow.type;
			if ow.destructible && ow.object_index != o_hitscan {
				instance_destroy(ow);
			}
		} else {
			if !c_dohook(hooks.onhit, [id, ow]) {
				var osdhufji = max(takingdamage-defense, 1);
				//STATS.damagetaken += osdhufji;
				se_play(snd_hurt);
				hp -= osdhufji;
				c_inv(invtime);
				c_screenshake(osdhufji, inv/2);
			}
		}
		returnable = true;
	}
	if ow.destructible {
		instance_destroy(ow);
	}
	return returnable;
}