if instance_exists(o_mapper) exit;
if !stun {
	method(self, step)();
	image_angle = lerp_angle(image_angle, 0, .1);
} else {
	image_angle += 11;
	var xtouching = move_and_collide(spd.h, 0, o_solid);
	var ytouching = move_and_collide(0, spd.v, o_solid);
	if array_length(xtouching) {
		log("ouch (horizontal)");
        spd.h = -spd.h*.4;
		stun = false;
		hp--;
		c_screenshake(8, 16);
    }
	if array_length(ytouching) {
		log("ouch (vertical)");
        spd.v = -spd.v*.4;
		stun = false;
		hp--;
		c_screenshake(8, 16);
    }
	if x < 0 || y < 0 || x > room_width || y > room_height {
		log("im good lol!");
		stun = false;
	}
}

//>>>>>>> 5c12bc3ffaafa12c9778e077e576a5f3a4e8542e

inv--;
hitboxradius = sprite_width/2*1.1;
c_basichurting();
if hp <= 0 {
	//c_zoomhold(x, y, 1.5, 4);
	instance_destroy();
}
//show_debug_message(x, y);
//sprite_index = s_akuya;
//depth = -9;

//if hp < 100 room_goto(icarus);