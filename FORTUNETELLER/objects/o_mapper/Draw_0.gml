draw_set_font(ft_marineconstellation);
draw_set_alpha(.4);
draw_spr(spawn.x, spawn.y, s_when_im);
for (i=-global.tilesize/2; i<roomsize.x; i+=global.tilesize) {
	draw_set_color(make_color_hsv(i%256, 128, 255));
	draw_set_alpha((abs(c_tilequantizeval(mouse_x)-i)<=8)+.1);
	draw_line(i-1, 0-1, i-1, room_height-1);
}
for (i=-global.tilesize/2; i<roomsize.y; i+=global.tilesize) {
	draw_set_color(make_color_hsv(i%256, 128, 255));
	draw_set_alpha((abs(c_tilequantizeval(mouse_y)-i)<=8)+.1);
	draw_line(0-1, i-1, room_width-1, i-1);
}
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_right);
window_set_caption(st(c_tilequantizeval(mouse_x)/global.tilesize) + ", " + st(c_tilequantizeval(mouse_y)/global.tilesize));
draw_set_halign(fa_left);