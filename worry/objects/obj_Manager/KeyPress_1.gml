if (room == rm_GameOver)
{
	global.boxesLeft = 4;
	room = currentRoom;
	
	tutorialLevelMoved = false;
	tutorialBoxesCollected = false;
}
else if (room == rm_Lvl_1 && !tutorialLevelMoved)
{
	var _inst = instance_create_layer(room_width / 2, room_height - 250, "Instances", obj_Text);
	_inst.image_index = 1;
	
	instance_create_layer(0, 0, "Instances", obj_Bullet);
	instance_create_layer(room_width, 0, "Instances", obj_Bullet);
	instance_create_layer(0, room_height, "Instances", obj_Bullet);
	instance_create_layer(room_width, room_height, "Instances", obj_Bullet);
	
	alarm[0] = room_speed * 4;
	
	tutorialLevelMoved = true;
}