function c_endpattern(delay=(
	o_roommanager.rooms[o_roommanager.currentroom+1].type==ROOMTYPE.CIRCLE ||
	o_roommanager.rooms[o_roommanager.currentroom+1].type==ROOMTYPE.MINIBOSS ||
	o_roommanager.rooms[o_roommanager.currentroom+1].type==ROOMTYPE.BOSS
)*10 sec) {
	delay = 0;
	if delay {
		o_roommanager.delay = delay;
	} else {
		with o_roommanager {
			o_roommanager.delay = 0;
			//log("no more fortnite????");
			timeout = 0;
			go = false;
			var futureguy = rooms[currentroom+1].type;
			if futureguy != ROOMTYPE.TIME {
				c_clearenemies();
				c_clearradius(155, 180, 500, true);
			}
			c_cleartheroom(true);
			//c_spawnitem(150, 155, rooms[currentroom][mappos].pool, 0);
			
		}
	}
	global.particles = 0;
}