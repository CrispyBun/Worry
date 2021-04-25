roomSwitchTimer = room_speed / 2;

global.boxesLeft = 4;

musicVolume = (levelCountMusicOff - global.roomsBeaten) / levelCountMusicOff;
audio_sound_gain(msc_Spoop, musicVolume * musicBaseVolume, 1000);

if (room != rm_GameOver && room != rm_LevelText)
{
	currentRoom = room;
	
	if (!roomTextSeen)
	{
		roomTextSeen = true;
		roomTextAlpha = 1;
		room = rm_LevelText;
	}
}
else
{
	audio_sound_gain(snd_Noise, 0, 50);
	audio_sound_gain(msc_Spoop, 0, 50);
}

switch (room)
{
	case rm_Init: room = rm_Lvl_1; break;
}