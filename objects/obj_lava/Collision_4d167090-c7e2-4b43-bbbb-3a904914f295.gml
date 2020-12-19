with (obj_player)
{
    if (incar == 1)
    {
        state = 1
        image_index = 0
        vsp = -10
        jumpAnim = 1
        scr_sound(sfx_hurt2, sfx_groovy)
        scr_sound(sfx_ouch, sfx_ouch2, sfx_ouch3)
    }
    else
    {
        state = 35
        image_index = 0
        vsp = -10
        scr_sound(sfx_hurt2, sfx_groovy)
        scr_sound(sfx_ouch, sfx_ouch2, sfx_ouch3)
    }
}


