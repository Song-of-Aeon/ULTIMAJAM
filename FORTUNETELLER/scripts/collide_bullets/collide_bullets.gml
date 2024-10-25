//function collide_bullets(x, y, radius) {
	//var dalist = [];
	//collision_circle_list(x, y, radius, o_bullet, true, true, dalist, true);
	//return ds_list_to_array(dalist);
//}
function collide_bullets(x,y,radius){
	return stullet_collide_list(x,y,radius)	 //might macro funnery so function
}
//#macro collide_bullets stullet_collide_list