function scrEnemyDamage(enemy, dmg){
	if (enemy.state == "dead") { return false; }

	enemy.hp -= dmg;
	enemy.state = "chasing";
	
	return true;
}