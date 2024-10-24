c_inputupdate();

if keyboard_check_pressed(vk_f1) {
	if instance_exists(o_mapper) {
		instance_create(o_mapper.spawn.x, o_mapper.spawn.y, FANTASIA);
		instance_destroy(o_mapper);
		//log("enemied");
		with o_enemy {
			step = archetype_.step;
		}
		with all {
			x += 20 tiles;
			y += 20 tiles;
		}
		with o_trigger {
			x2 += 20 tiles;
			y2 += 20 tiles;
		}
	} else {
		instance_create(-1, -1, o_mapper);
		c_loadmap(global.currentmap);
		with all {
			x -= 20 tiles;
			y -= 20 tiles;
		}
		with o_trigger {
			x2 -= 20 tiles;
			y2 -= 20 tiles;
		}
		instance_destroy(FANTASIA);
		with o_enemy {
			step = c_null;
		}
		with o_mapper {
			roomname = global.currentmap.roomname;
			roomsize = global.currentmap.roomsize;
			//guys = friend.guys;
			//enemies = friend.enemies;
			//triggers = friend.triggers;
			spawn = global.currentmap.spawn;
			bg = global.backgrounds[$global.currentmap.bg];
			created = false;
			actionnum = 0;
			historycap = 30;
			undone = 0;
			history = [];
			historynames = [];
			future = [];
			futurenames = [];
		}
	}
}
global.count++;
var cam = camera_get_active();
camera_set_view_pos(cam, clamp(camera_get_view_x(cam), 0, 200), clamp(camera_get_view_y(cam), 0, 200));