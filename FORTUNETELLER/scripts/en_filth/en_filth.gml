//exit;
nu enemy("filth", s_impostor, 4, function() {
	statish("attacking", false);
	if !attacking {
		//log(x, y);
		if x < me.x-(40+charge*4) {
			if place_meeting(x+12, y, o_solid) && me.y < y && spd.v == 0 {
				spd.v = -2.3;
				y--;
			}
			spd.h = min(spd.h+.1, 2.2);
			charge = 0;
		} else if x > me.x+(40+charge*4) {
			if place_meeting(x-12, y, o_solid) && me.y < y && spd.v == 0 {
				spd.v = -2.3;
				y--;
			}
			spd.h = max(spd.h-.1, -2.2);
			charge = 0;
		} else if spd.v == 0 {
			spd.h = lerp(spd.h, 0, .16);
			charge++;
			if charge > 16 {
				spd.v = -2.2;
				y--;
				aerial = true;
				if x < me.x savedspeed = 4 else savedspeed = -4;
				charge = 0;
				attacking = true;
				//var boul = c_shoot(x, y, 0, 0, bul.big, c_red, function() {if !instance_exists(owner) {kys exit} x=owner.x; y=owner.y});
				//boul.owner = id;
				//boul.friendly = false;
			}
		} else charge = 0;
	} else {
		spd.h = savedspeed;
	}
	
	/*var a = {bbox_left: bbox_left+2,
        bbox_top:bbox_top+grav,
        bbox_right: bbox_right-2,
        bbox_bottom:bbox_bottom+grav}
	
	var ymeeting = bread_collision(a,o_solid,COLTYPE.LESSTHANEQUALTO);*/
	var xtouching = move_and_collide(spd.h, 0, o_solid);
	var ytouching = move_and_collide(0, spd.v, o_solid);
    if !array_length(ytouching) {
        spd.v += grav;
        aerial = true;
    } else {
        if aerial {
            aerial = false;
        }
        if attacking {
            attacking = false;
			if boul instance_destroy(boul);
        }
        spd.v = 0;
    }
    //c_newcollision();
	//x += spd.h;
	//y += spd.v;
}, u, function() {
	grav = .14;
	aerial = false;
	charge = 0;
	attacking = false;
	boul = noone;
	savedspeed = 0;
});