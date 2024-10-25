function st_sap() {
	if !inv {
		takingdamage = ow.damage;
		var osdhufji = max(takingdamage, .001);
		//STATS.damagetaken += osdhufji;
		hp = clamp(hp-osdhufji, .01, maxhp);
		c_screenshake(osdhufji*65, 2);
	}
	return false;
}