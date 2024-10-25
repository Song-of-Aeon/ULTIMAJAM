//exit;
nu enemy("boss", s_impostor, 30, function() {
	
	c
	if ncm(5) {
		c_shoot(x, y, 2, point_me(), bul.circle);
	}
	
	/*var a = {bbox_left: bbox_left+2,
        bbox_top:bbox_top+grav,
        bbox_right: bbox_right-2,
        bbox_bottom:bbox_bottom+grav}
	
	var ymeeting = bread_collision(a,o_solid,COLTYPE.LESSTHANEQUALTO);*/
	//var xtouching = move_and_collide(spd.h, 0, o_solid);
	//var ytouching = move_and_collide(0, spd.v, o_solid);
    /*if !array_length(ytouching) {
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
    }*/
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