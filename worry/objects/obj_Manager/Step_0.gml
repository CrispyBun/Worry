if (room == rm_Lvl_1 && global.boxesLeft <= 0)
{
	if (!tutorialBoxesCollected)
	{
		tutorialBoxesCollected = true;
		var _inst = instance_create_layer(room_width / 2, room_height - 250, "Instances", obj_Text);
		_inst.image_index = 2;
	
		var _inst = instance_create_layer(1150, 350, "Instances", obj_Text);
		_inst.image_index = 3;
		_inst.image_xscale = 0.6;
		_inst.image_yscale = _inst.image_xscale;
	}
	else
	{
		instance_create_layer(0, irandom_range(0, room_height), "Instances", obj_Bullet);
	}
}

roomSwitchTimer --;