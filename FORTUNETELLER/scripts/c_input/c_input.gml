function c_input() {
	var i;
	var inputs = variable_struct_get_names(global.inputs);
	for (i=0; i<array_length(inputs); i++) {
		set_value(self, inputs[i], global.inputs[$inputs[i]]);
	}
	
	//these guys are compounds that are per-instance of c_input
	//buttons = [shoot, bomb, special];
}

function c_inputupdate() {
	var inputs = variable_struct_get_names(global.inputs);
	var i;
	for (i=0; i<array_length(inputs); i++) {
		global.inputs[$inputs[i]].update();
	}
}

function c_inputload() {
	nu kinput("left", [vk_left, vk_numpad4, gp_padl, "A"], "Left");
	nu kinput("down", [vk_down, vk_numpad2, vk_numpad5, gp_padd, "S"], "Down");
	nu kinput("up", [vk_up, vk_numpad8, gp_padu, "W"], "Up");
	nu kinput("right", [vk_right, vk_numpad6, gp_padr, "D"], "Right");
	
	nu kinput("leftmenu", ["Q"]);
	nu kinput("rightmenu", ["E"]);
	nu kinput("click", [mb_left, vk_space, vk_enter]);
	nu kinput("back", ["X", vk_escape]);
	nu kinput("rightclick", [mb_right]);
	nu kinput("shift", [vk_shift]);
	
	nu kinput("interact", ["Z", vk_enter]);
	nu kinput("usable", ["X"]);
	
	nu kinput("ctrl", [vk_control]);
	nu kinput("zed", ["Z"]);
	nu kinput("yed", ["Y"]);
	
}

function kinput(name_, keys_, displayname_=name_, compositekeys_=[]) constructor {
	name = name_;
	key = keys_;
	displayname = displayname_;
	compositekeys = compositekeys_;
	hit = 0;
	hold = 0;
	drop = 0;
	//axes = array_create(gp_axis_orientation_w); //yeah ill finish this later
	
	update = function() {
		var i, j;
		hit = false;
		hold = false;
		drop = false;
		iterate compositekeys to {
			for (j=0; j<array_length(global.inputs[$compositekeys[i]].key); j++) {
			hit |= input_active(global.inputs[$compositekeys[i]].key[i], INPUT.PRESSED);
			hold |= input_active(global.inputs[$compositekeys[i]].key[i], INPUT.HELD);
			drop |= input_active(global.inputs[$compositekeys[i]].key[i], INPUT.RELEASED);
			}
		}
		for (i=0; i<array_length(key); i++) {
			hit |= input_active(key[i], INPUT.PRESSED);
			hold |= input_active(key[i], INPUT.HELD);
			drop |= input_active(key[i], INPUT.RELEASED);
		}
	}
	global.inputs[$name] = self;
}

global.inputs = {};
c_inputload();


