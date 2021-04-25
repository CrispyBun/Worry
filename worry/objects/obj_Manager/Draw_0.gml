if (room == rm_LevelText)
{
	var _alphaDec = 0.005;
	var _text = "";
	switch (currentRoom)
	{
		case rm_Lvl_2: _text = "Descend deeper into madness."; break;
		case rm_Lvl_3: _text = "Keep going."; break;
		case rm_Lvl_4: _text = "I must get the boxes.\nOr so they say."; _alphaDec = 0.004; break;
		case rm_Lvl_5: _text = "Can't run away."; break;
		case rm_Lvl_6: _text = "They say they're here.\nYet they don't know where to go."; _alphaDec = 0.0025; break;
		case rm_Lvl_7: _text = "What's in the boxes?"; break;
		case rm_Lvl_8: _text = "Deeper."; break;
	}
	draw_set_font(fnt_Default);
	draw_set_halign(fa_center);
	draw_set_alpha(roomTextAlpha);
	draw_text(room_width / 2, room_height / 2, _text);
	draw_set_alpha(1);
	
	roomTextAlpha -= _alphaDec;
	
	if (roomTextAlpha <= 0 || (keyboard_check_pressed(vk_anykey) && roomSwitchTimer <= 0)) room = currentRoom;
}