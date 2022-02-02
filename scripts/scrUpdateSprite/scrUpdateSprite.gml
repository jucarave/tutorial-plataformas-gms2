function scrUpdateSprite(){
	switch (state) {
		case "idle":
			sprite_index = asset_get_index("spr" + weapons[weaponInd] + action);
			break;
			
		case "dash":
			sprite_index = sprDash;
			break;
	}
	
}