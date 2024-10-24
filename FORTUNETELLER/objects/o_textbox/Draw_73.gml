//

//surface_set_target(global.surfaces.HUD);
var pos = new vec2(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
gpu_set_blendmode(bm_add)
draw_surface(textsurf, pos.x, pos.y); //draw once to set the alpha to the correct amount
gpu_set_blendmode(bm_normal)
gpu_set_colorwriteenable(1,1,1,0);
draw_surface(textsurf, pos.x, pos.y); //draw the second time without alpha
gpu_set_colorwriteenable(1,1,1,1);
//surface_reset_target();

//
