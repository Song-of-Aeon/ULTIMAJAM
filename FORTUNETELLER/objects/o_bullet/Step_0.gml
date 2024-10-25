//timescale = c_gettimescale()
direction = dir;
speed = spd//*timescale;

//var ticks = floor(timescale);
//var _timescale = timescale%1;

//var val1 = floor(_timescale*global.UntouchableImmutableCount);
//var val2 = floor(_timescale*(global.UntouchableImmutableCount-1));
//ticks += val1 != val2;
	
repeat(1) {
	image_alpha = min(image_alpha+.04, alpha);
	fxscale = scale*((alpha-image_alpha)*4+1);
	image_angle = dir-90;
	dir += tspd;
	if !simple behaviors();
	if !((real(id)+gc)%60) && !(x==clamp(x, -escapedistance, thewid+escapedistance) && y==clamp(y, -escapedistance, thehei+escapedistance)) {
		instance_destroy();
	}
}