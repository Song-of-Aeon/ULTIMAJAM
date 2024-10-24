function st_fortune() {
    //log(jump);
	//log(weapons[eqwp]);
	
	accel = .1;
	
	if right.hold && up.hold dir = 45 else
	if up.hold && left.hold dir = 45 else
	if left.hold && down.hold dir = 225 else
	if down.hold && right.hold dir = 315 else
	if right.hold dir = 0 else
	if up.hold dir = 90 else
	if left.hold dir = 180 else	
	if down.hold dir = 270 else
	dir = -1;
	
	
	
    hput = right.hold-left.hold;
    vput = down.hold-up.hold;
	
	c_dospritesky();
	
	if hput != 0 {
		spd.h = lerp(spd.h, hput*walkspeed, aerial ? airaccel : accel);
	} else {
		spd.h = lerp(spd.h, hput*walkspeed, aerial ? airfrict : frict);
	}
	spd.v += grav;
	
	stuff[eqwp].step(usable);
	
	
    if leniance && jump.hit {
		spd.v = -jumpspeed;
        leniance = 0;
    }
	
	if jump.drop && -spd.v {
		spd.v *= .3;
	}
    /*if spd.v < 0 {
        if interact.drop {
            spd.v /= 2;
        }
    }*/
    //c_newcollision();
	var oldtouching = deep_copy(touchers);
	
	//var xtouching = [];
	//var ytouching = move_and_collide(spd.h, spd.v, o_solid);
	var xtouching = move_and_collide(spd.h, 0, o_solid);
	var ytouching = move_and_collide(0, spd.v, o_solid);
	
	var nottouching = ds_list_create();
	collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, o_notsolid, false, false, nottouching, false);
	nottouching = ds_list_to_array(nottouching);
	touchers = array_union(xtouching, ytouching, nottouching);
	iterate touchers to {
		touchers[i].onstay();
		if !instance_exists(touchers[i]) continue;
		if !array_contains(oldtouching, touchers[i]) touchers[i].ontouch();
	}
	iterate oldtouching to {
		if !instance_exists(oldtouching[i]) continue;
		if !array_contains(touchers, oldtouching[i]) oldtouching[i].onleave();
	}
	//log("and it");
	//log(xtouching);
	//log(ytouching);
	if array_length(ytouching) {
		leniance = lencount;
        aerial = false;
		spd.v = 0;
	} else {
		var stepdowndist = global.tilesize/3;
		if !aerial {
			if collision_line(x, y, x, y+sprite_get_height(sprite_index)-sprite_get_xoffset(sprite_index)+stepdowndist, o_solid, true, false) && !interact.hit {
				move_and_collide(0, stepdowndist, o_solid, u, u, u, 0, 0);
				//log("wow!");
			} else aerial = true;
		}
		leniance--;
	}
	if array_length(xtouching) {
		//spd.h = 0;
	}
	var dude = collision_point(x, y, o_entity, false, false);
	if dude && !aerial && down.hit {
		if dude.interactable {
			dude.interaction();
		}
	}
	//log(spd.h);
	//log(x-xprevious);
}