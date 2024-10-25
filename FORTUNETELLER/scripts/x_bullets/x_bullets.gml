var se_burst = se_null
nu bullet("small", s_bulsmall, 3, true, false, 1, u, u, se_burst);
nu bullet("point", s_bulpoint, 3, true, false, 1, u, u, se_burst);
nu bullet("square", s_bulsquare, 3, true, false, 1, u, u, se_burst);
nu bullet("circle", s_bulcircle, 3, true, false, 1, u, u, se_burst);
nu bullet("bullet", s_bulbullet, 3, true, false, 1, u, u, se_burst);
nu bullet("core", s_bulcore, 3, true, false, 1, u, u, se_burst);
nu bullet("card", s_bulcard, 3, true, false, 1, u, u, se_shootpop);
nu bullet("cross", s_bulcross, 3, true, false, 1, u, u, se_burst);
nu bullet("thin", s_bulthin, 3, true, false, 1, u, u, se_burst);
nu bullet("big", s_bulbig, 3, true, false, 1, u, u, se_burst);
nu bullet("star", s_bulstar, 3, true, false, 1, function() {image_angle = gc*2; c_bulletdraw()}, false); //potential desync!
nu bullet("seed", s_bulseed, 3, true, false, 1, u, u, se_burst);
nu bullet("gem", s_bulgem, 3, true, false, 1, u, u, se_shootpop);
nu bullet("kunai", s_bulkunai, 3, true, false, 1, u, u, se_burst);
nu bullet("knife", s_bulknife, 3, true, false, 1, u, u);
nu bullet("fire", s_bulfire, 3, true, false, 1, u, u, se_shootpop);
nu bullet("bubble", s_bulbubble, 3, true, false, 1, u, u, se_shootbig);
nu bullet("micro", s_bulmicro, 2, true, false, 1, u, u, se_shootpop);


//nu bullet("butterfly", s_bulbutterfly, 3, true, false, 1);




nu bullet("bone", s_bulthin, .01, true, false, 1, u, u, u, st_sap);
nu bullet("bluestop", s_bulbig, 3, true, false, 1, c_baseless, u, u, st_bluestop);
nu bullet("orangego", s_bulbig, 3, true, false, 1, c_baseless, u, u, st_orangego);
nu bullet("blue", s_bulcircle, 3, true, false, 1, c_flatcolor, u, u, st_pull);
nu bullet("red", s_bulcircle, 3, true, false, 1, c_flatcolor, u, u, st_push);
nu bullet("vacuum", s_bulvacuum, 1, true, false, .7, c_flatcolor, u, u, st_suffocation);
nu bullet("air", s_bulbig, 3, true, false, .25, c_flatcolor, u, u, st_breathing);
from NaN;
//c_changeonhit