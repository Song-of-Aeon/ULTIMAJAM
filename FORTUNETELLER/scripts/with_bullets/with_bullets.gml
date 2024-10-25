function with_bullets(func) {
	//meth
	
	if(os_browser == browser_not_a_browser){ //if not html5
		var bulletlist = instance_get_all(o_bullet);
		iterate bulletlist to {
			method(bulletlist[i], func)();
		}
		return;
	}
	throw "kys";
	if(instance_number(o_stulletmanager) == 0){ //can be run before any bullets come out
		instance_create(0,0,o_stulletmanager);
	}
	var i = 0;
	var len = array_length(o_stulletmanager.myBullets);
	repeat(len){
		method(o_stulletmanager.myBullets[i], func)();
		i++
	}
}

#macro wobullet with_bullets(function() {
#macro nobullet })

//usage:
/*
wobullet
	c
	if ncm(2) whatever();
nobullet
*/