function c_friendlize(boul=self) {
	if boul.friendly != true {
		boul.friendly = true;
		boul.damage /= 3;
		boul.damage *= FANTASIA.damage;
		boul.layer = layer_get_id("friendly" + (boul.additive_ ? "_add" : ""));
		if c_dohook(hooks.onplayershoot, [me, boul]) {
			instance_destroy(boul);
			return false;
		}
		return true;
	}
	return false;
}

function c_enemize(boul=self) {
	if boul.friendly != false {
		boul.friendly = false;
		boul.damage *= 3;
		boul.damage /= FANTASIA.damage;
		boul.layer = layer_get_id("bullets" + (boul.additive_ ? "_add" : ""));
		return true;
	}
	return false;
}

function c_nanize(boul=self) {
	if !is_nan(boul.friendly) {
		boul.friendly = NaN;
		boul.layer = layer_get_id("bullets" + (boul.additive_ ? "_add" : ""));
		return true;
	}
	return false;
}