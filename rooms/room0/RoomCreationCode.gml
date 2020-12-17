if (!audio_is_playing(mu_fryboys))
{
	audio_stop_all()
    audio_play_sound(mu_fryboys, 2, 1)
}

instance_create(obj_player.x, obj_player.y, obj_transition2)