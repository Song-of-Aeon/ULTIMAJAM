function st_push() {
	var returnable = false;
	direction = ow.image_angle+90;
	speed = ow.damage;
	returnable = true;
	if ow.destructible {
		instance_destroy(ow);
	}
	return returnable;
}

function st_pull() {
	var returnable = false;
	direction = ow.image_angle-90;
	speed = ow.damage;
	returnable = true;
	if ow.destructible {
		instance_destroy(ow);
	}
	return returnable;
}