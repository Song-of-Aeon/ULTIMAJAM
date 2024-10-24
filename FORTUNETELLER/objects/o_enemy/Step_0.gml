if instance_exists(o_mapper) exit;
if !stun {
	method(self, step)();
} else {
	if place_meeting(x, y, o_solid) && speed >= 0 {
		speed = 0;
		stun = false;
		hp--;
		c_screenshake(8, 16);
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