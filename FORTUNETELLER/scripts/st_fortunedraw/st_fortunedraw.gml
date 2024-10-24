function st_fortunedraw() {
	//draw_self();
	draw_sprite_ext(spriteindex, imageindex, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
	stuff[eqwp].draw();
	draw_set_color(c_white);
	//draw_set_font(ft_comicsans);
	draw_set_font(ft_fortune);
	//exit;
	var pos = new vec2(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
	draw_text(pos.x+48, pos.y+10, "1. jumpspeed: " + string(jumpspeed));
	draw_text(pos.x+48, pos.y+20, "2. gravity: " + string(grav));
	draw_text(pos.x+48, pos.y+30, "3. acceleration: " + string(accel));
	draw_text(pos.x+48, pos.y+40, "4. friction: " + string(frict));
	draw_text(pos.x+48, pos.y+50, "5. air acceleration: " + string(airaccel));
	draw_text(pos.x+48, pos.y+60, "6. air friction: " + string(airfrict));
	draw_text(pos.x+48, pos.y+70, "7. maxspeed: " + string(walkspeed));
	draw_text(pos.x+48, pos.y+80, "8. leniance: " + string(lencount));
	if up.hit {
		if keyboard_check(ord("1")) {
			jumpspeed += .1;
		}
		if keyboard_check(ord("2")) {
			grav += .01;
		}
		if keyboard_check(ord("3")) {
			accel += .02;
		}
		if keyboard_check(ord("4")) {
			frict += .02;
		}
		if keyboard_check(ord("5")) {
			airaccel += .02;
		}
		if keyboard_check(ord("6")) {
			airfrict += .02;
		}
		if keyboard_check(ord("7")) {
			walkspeed += .1;
		}
		if keyboard_check(ord("8")) {
			lencount++;
		}
	}
	if down.hit {
		if keyboard_check(ord("1")) {
			jumpspeed -= .1;
		}
		if keyboard_check(ord("2")) {
			grav -= .01;
		}
		if keyboard_check(ord("3")) {
			accel -= .02;
		}
		if keyboard_check(ord("4")) {
			frict -= .02;
		}
		if keyboard_check(ord("5")) {
			airaccel -= .02;
		}
		if keyboard_check(ord("6")) {
			airfrict -= .02;
		}
		if keyboard_check(ord("7")) {
			walkspeed -= .1;
		}
		if keyboard_check(ord("8")) {
			lencount--;
		}
	}
	draw_set_font(ft_marineconstellation);
}