exit;
nu pattern(function() { //step
	//log("hi");
	if bp(0, all) {
		shoot(10, 10, 5, 270, bul.circle, c_red);
	}
	if bp(1, all) {
		shoot(50, 10, 5, 270, bul.circle, c_red);
	}
	if bp(2, all) {
		shoot(90, 10, 5, 270, bul.circle, c_red);
	}
	if bp(3, all) {
		shoot(130, 10, 5, 270, bul.circle, c_red);
	}
},
infinity, //time
"Goin' Under", //name
u, //create
u, //draw
u, //clear
);
