if (global.boxesLeft <= 0)
{
	obj_Manager.roomTextSeen = false;
	global.roomsBeaten ++;
	room = room_next(room);
}
else
{
	audio_play_sound(snd_Die, 450, false);
	room = rm_GameOver;
}