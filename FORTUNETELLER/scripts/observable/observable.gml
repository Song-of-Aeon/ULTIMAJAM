global.observables = {};
function observable(named=pointer_null, observed_voice=pointer_null, observed_health=pointer_null, observed_meaning=pointer_null, observed_history=pointer_null, observer=false) constructor {
	if named == pointer_null {
		named = string(array_length(struct_get_names(global.observables)));
	}
	name = named;
	voice = observed_voice;
	status = observed_health;
	emotions = observed_meaning;
	memories = observed_history;
	if observer {
		stats = new Stats();
	}
	presence = noone;
	trueself = self;
	global.observables[$name] = self;
}

nu observable(u, {}, {}, {}, {}, true); //silent girl, access directly with global.observables[$"0"];
nu observable("", u, u, u, u, true);

function observable_find(obj) {
	
}

function observable_instantiate(ob) {
	var forkedself = deep_copy(ob);
	forkedself.trueself = ob;
	return forkedself;
}

//accept