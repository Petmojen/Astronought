if room = Menu
{
	if(audio_is_playing(_02___area_1) = true){
		audio_stop_sound(_02___area_1);
	}
	
	audio_play_sound(_01___blaster_master_opening, 10, true);
}

if room = Room1
{
	if(audio_is_playing(_01___blaster_master_opening)=true){
		audio_stop_sound(_01___blaster_master_opening);
	}
	audio_play_sound(_02___area_1, 10, true);
}