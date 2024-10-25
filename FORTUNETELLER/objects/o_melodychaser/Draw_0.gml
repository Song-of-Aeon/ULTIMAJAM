var pos;
iterate notes to {
	pos = new vec2(WIDTH*.2-30+notes[i].lane*32, notes[i].pos*32*xmod);
	if is_oob(50, u, u, pos) continue;
	draw_set_color(notes[i].color);
	draw_ring(pos.x, pos.y, 3, true);
	if notes[i].type == NOTES.FREEZE || notes[i].type == NOTES.ROLL {
		draw_stroke(pos.x+.5, pos.y, pos.x+.5, pos.y+4*xmod, 2);
	}
	if notes[i].type == NOTES.CONCLUDE {
		draw_stroke(pos.x-.5, pos.y, pos.x-.5, pos.y-4*xmod, 2);
	}
	//draw_text(WIDTH*.2-30+notes[i].lane*20, notes[i].pos*32*xmod, notes[i].pos);
}
draw_reset();
var present_time = audio_sound_get_track_position(global.playingmusicdata);
draw_text(5, 15, present_time);