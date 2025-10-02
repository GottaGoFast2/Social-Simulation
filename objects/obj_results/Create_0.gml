if (global.k_points) <= 80
{
    audio_stop_all()
    audio_play_sound(ost_failure,0,false)
    alarm[0] = audio_sound_length(ost_failure) * 60;
} 
else {
	audio_stop_all() 
    audio_play_sound(ost_victory,0,false)
    alarm[0] = audio_sound_length(ost_failure) * 60;
}