
/*layer_script_begin(layer_id, function() {
	if instance_exists(o_textbox);
	surface_set_target(global.surfaces.bulletsurf);
	//shader_set(z_detransparentify);
	gpu_set_blendmode_ext_sepalpha(bm_src_alpha, bm_inv_src_alpha, bm_one, bm_inv_src_alpha)
	camera_set_view_size(camera_get_active(),WIDTH,HEIGHT);
		//camera_set_view_mat(camera_get_active(),matrix_build(0,0,0,0,0,0,global.scale,global.scale,0));
	camera_apply(camera_get_active())
	//draw_clear_alpha(c_black, 0);
});
layer_script_end(layer_id, function(){
	//shader_reset();
	gpu_set_blend_mode(bm_normal);
	surface_reset_target();	
});
*/

var endfunky = function() {
	if !instance_exists(o_textbox) exit;
	surface_reset_target();
}

var layer_id = layer_get_id(ABOVE);
layer_script_begin(layer_id, function() {
	if !instance_exists(o_textbox) exit;
	if !surface_exists(global.bulletsurfaces[0]) {
		global.bulletsurfaces[0] = surface_create(1280, 720);
	}
	surface_set_target(global.bulletsurfaces[0]);
	draw_clear_alpha(c_black, 0);
});
layer_script_end(layer_id, endfunky);


var layer_id = layer_get_id(MIDDLE);
layer_script_begin(layer_id, function() {
	if !instance_exists(o_textbox) exit;
	if !surface_exists(global.bulletsurfaces[1]) {
		global.bulletsurfaces[1] = surface_create(1280, 720);
	}
	surface_set_target(global.bulletsurfaces[1]);
	draw_clear_alpha(c_black, 0);
});
layer_script_end(layer_id, endfunky);


var layer_id = layer_get_id(ABOVE);
layer_script_begin(layer_id, function() {
	if !instance_exists(o_textbox) exit;
	if !surface_exists(global.bulletsurfaces[2]) {
		global.bulletsurfaces[2] = surface_create(1280, 720);
		
	}
	surface_set_target(global.bulletsurfaces[2]);
	draw_clear_alpha(c_black, 0);
});
layer_script_end(layer_id, endfunky);