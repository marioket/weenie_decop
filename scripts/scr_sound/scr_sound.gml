if global.sfx = 1
{
var snd, play;
snd = argument[irandom((argument_count - 1))]
play = audio_play_sound(snd, 1, false)
audio_sound_gain(snd, global.volume, 0)
audio_sound_pitch(snd, global.pitch)
}
