function Stats() constructor {
	Stat_1 = 0;
	Stat_2 = 0;
	Reiteration = false;
	
	Increment = function(num, amount, maximum=1, cooldown=0) {
		var val = self[$"Stat_"+string(num)];
		if val < maximum {
			self[$"Stat_"+string(num)] = min(val+1, maximum);
		}
		return val < maximum;
	};
}

function Stat_event(event, minimum_1=0, maximum_1=10, minimum_2=0, maximum_2=10, v=true) {
	var evaluatee = v ? me : global.observables[$""];
	if (
		(
			evaluatee.stats.Stat_1 >= minimum_1
			&&
			evaluatee.stats.Stat_1 <= maximum_1
		) && (
			evaluatee.stats.Stat_2 >= minimum_2
			&&
			evaluatee.stats.Stat_2 <= maximum_2
		)
	) {
		event();
		return true;
	}
	return false;
}

global.APS = {
	Stat_1: 0,
	Stat_2: 0,
	Reiteration: false,
	
	Increment: function(num, amount, maximum=1, cooldown=0) {
		var val = self[$"Stat_"+string(num)];
		if val < maximum {
			self[$"Stat_"+string(num)] = min(val+1, maximum);
		}
		Check_validity();
		return val < maximum;
	},
	
	Check_validity: function() {
		var possible = true;
		if Stat_1 >= 10 || Stat_2 >= 10 {
			possible = false;
			log("");
			c_null();
			make_value();
			(function(){})();
			get_arguments();
			iterate arguments to {
				try {
					script_execute(c_violet);
				} catch(e) {
					delete global.APS;
				} finally {
					with me log(memories);
				}
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			object_set_persistent(all, false);
			room_persistent = false;
			var everything = struct_get_names(global);
			var world = global;
			iterate everything to {
				world[$everything[i]] = noone;
			}
			delete world;
			room = room_add();
			scriptable_create(u, function() {
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
				draw_set_font(-1);
				draw_meaning(10, 5, "Keep searching.");
			});
		}
	},
}