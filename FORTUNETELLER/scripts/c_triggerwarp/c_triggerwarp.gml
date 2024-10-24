function c_triggerwarp() {
	var chump = blink(method(self, function() {
		log(target, targetx, targety);
		c_loadmap(mp[$target]);
		FANTASIA.x = targetx;
		FANTASIA.y = targety;
	}));
	chump.target = target;
	chump.targetx = targetx;
	chump.targety = targety;
}