
function c_lock() {
	if !instance_exists(FANTASIA) exit;
	log("locking");
	FANTASIA.state = st_lock;
	reenabling = false;
	if menuCursor.disabled = false {
		reenabling = true;
	}
	menuCursor.disabled = true;
	c_evaluate();
}

function c_unlock() {
	if !instance_exists(FANTASIA) exit;
	log("unlocking");
	FANTASIA.state = st_standard; log("im seting standard lol");
	menuCursor.disabled = !reenabling;
	with o_boss {
		state = st_bossfight;
	}
	c_evaluate();
}

function c_freeze() {
	if !instance_exists(FANTASIA) exit;
	reenabling = false;
	if menuCursor.disabled = false {
		reenabling = true;
	}
	menuCursor.disabled = true;
	FANTASIA.state = c_null;
	c_evaluate();
}