c_input();



typing = false;

selectedtype = mod_negative(selectedtype+rightmenu.hit-leftmenu.hit, array_length(menuoptions));

global.currentbackground = bg;
c
if ncm(60 sec) && array_length(guys) {
	c_saveroom(roomname+"autosave");
}
mousepos.x = mouse_x;
mousepos.y = mouse_y;

if ctrl.hold && zed.hit {
	undo();
}
if ctrl.hold && yed.hit {
	redo();
}

if shift.hold {
	camera_set_view_target(view_camera[0], id);
	camera_set_view_border(view_camera[0], 512, 288);
	x = clamp(x+right.hold*4-left.hold*4, WIDTH/2, roomsize.x);
	y = clamp(y+down.hold*4-up.hold*4, HEIGHT/2, roomsize.y);
} else {
	try {
		menuoptions[selectedtype].pos = cycle(menuoptions[selectedtype].pos+down.hit-up.hit, array_length(menuoptions[selectedtype].options));
		menuoptions[selectedtype].opos[menuoptions[selectedtype].pos] = cycle(menuoptions[selectedtype].opos[menuoptions[selectedtype].pos]+right.hit-left.hit, array_length(menuoptions[selectedtype].options[menuoptions[selectedtype].pos]));
		menuoptions[selectedtype].step();
	} catch(e) {
		log(e);
		log("oopsie!");
	}
}