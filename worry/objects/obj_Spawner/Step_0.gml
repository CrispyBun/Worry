if (global.boxesLeft <= boxesLeftRequired)
{
	if (spawnTimer <= 0)
	{
		instance_create_layer(x, y, "Instances", obj_Bullet);
		spawnTimer = spawnTimerTime;
	}
	else spawnTimer --;
}