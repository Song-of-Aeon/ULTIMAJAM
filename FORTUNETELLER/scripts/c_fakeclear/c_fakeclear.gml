function c_fakeclear(boul) {
	with boul {
		sprite_index = bul.micro.sprite;
		colorcover = asset_get_index(string(sprite_get_name(sprite_index)) + "cc");
		damage = bul.micro.damage;
		destructible = false;
		tspd = 0;
		behaviors = c_null;
	}
}
