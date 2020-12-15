if (room == room0 && (!audio_is_playing(mu_fryboys)))
{
	audio_stop_all()
    audio_play_sound(mu_fryboys, -1, true)
}
if (room == Char_select && (!audio_is_playing(mu_select)))
{
	audio_stop_all()
    audio_play_sound(mu_select, -1, true)
}