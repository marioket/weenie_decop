var snd, play;
snd = argument[irandom((argument_count - 1))]
play = audio_play_sound(snd, 1, false)
audio_sound_gain(play, global.volume, 0)
audio_sound_pitch(play, global.pitch)
