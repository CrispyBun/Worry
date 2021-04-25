currentRoom = rm_Lvl_1;
global.roomsBeaten = 0;
global.boxesLeft = 4;

tutorialLevelMoved = false;
tutorialBoxesCollected = false;

roomTextAlpha = 1;
roomTextSeen = false;

audio_play_sound(snd_Noise, 500, true);
audio_sound_gain(snd_Noise, 0, 0);

roomSwitchTimer = room_speed / 2;

audio_play_sound(msc_Spoop, 700, true);
musicBaseVolume = 0.4;
musicVolume = 1;
levelCountMusicOff = 7;