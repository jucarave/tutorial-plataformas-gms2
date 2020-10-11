/// scrCreateWeapon
function scrCreateWeapon(){
	instance_create_layer(objPlayer.x + 32 * objPlayer.image_xscale, objPlayer.y - 100, "Instances", objAssaultRifle);
}