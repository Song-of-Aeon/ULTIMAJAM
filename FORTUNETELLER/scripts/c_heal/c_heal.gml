function c_heal(amount_) {
	with FANTASIA {
		amount = amount_;
		if c_dohook(hooks.onheal, me, amount) exit;
		hp += amount;
	}
}