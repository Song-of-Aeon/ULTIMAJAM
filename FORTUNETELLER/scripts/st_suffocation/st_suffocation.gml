function st_suffocation() {
	log(breath);
	var returnable = false;
	if !inv breath -= ow.damage;
	if breath <= 0 {
		breath = breathmax/3;
		takingdamage = 10;
		if takingdamage > hp {
			state = st_deathbomb;
			takingtype = ow.type;
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
}

function st_breathing() {
	var returnable = false;
	if !inv breath += ow.damage;
}