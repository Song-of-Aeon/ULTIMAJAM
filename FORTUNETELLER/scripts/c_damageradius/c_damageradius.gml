nu bullet("damageradius", s_onecircle, 1, false, true, 0);
nu bullet("damagerect", s_one, 1, false, true, .2);

function c_damageradius(x, y, radius, damage=1, friendly=true) {
	var myguy = c_shoot(x, y, 0, 0, bul.damageradius, u, function() {
		if c kys;
	});
	rescale(myguy, radius/10);
	myguy.friendly = friendly;
	myguy.damage = damage;
	return myguy;
}

function c_damagerect(x, y, x2, y2, damage=1, friendly=true) {
	
	if friendly == true {
		var dudes = instance_get_all(o_enemy);
		iterate dudes to {
			//log(dudes[i].x, dudes[i].y);
			//log(x, y, x2, y2);
			if dudes[i].x < x || dudes[i].y < y || dudes[i].x > x2 || dudes[i].y > y2 {
				//log("deleted because", dudes[i].x < x ,dudes[i].y < y ,dudes[i].x > x2 ,dudes[i].y > y2 )
				array_delete(dudes, i, 1);
				i--;
				continue;
			}
		}
		//log(dudes);
	} else if friendly == false {
		if FANTASIA.x < x || FANTASIA.y < y || FANTASIA.x > x2 || FANTASIA.y > y2 {
			exit;
		} else var dudes = [FANTASIA];
	}
	
	
	var myguy = c_shoot(x, y, 0, 0, bul.damagerect);
	myguy.particling = true;
	myguy.friendly = friendly;
	myguy.damage = damage;
	iterate dudes to {
		//log("hi.")
		dudes[i].ow = myguy;
		method(dudes[i], myguy.onhit)();
		//(dudes[i] ^ ow.onhit)();
	}
	instance_destroy(myguy);
}