scr_getinput()
image_speed = 0.2
movespeed = 2
hsp = (image_xscale * movespeed)
if (vsp < 12)
    vsp += grav
if (charselect == 1)
    sprite_index = spr_player_skid
if (charselect == 2)
    sprite_index = spr_player2_skid
if (floor(image_index) == 4)
{
    state = 0
    movespeed = 4
}
if (place_meeting((x + 1), y, obj_wall) || place_meeting((x - 1), y, obj_wall))
{
    state = 24
    movespeed = 4
    image_index = 0
    dashAnim = 1
    scr_sound(13)
}
scr_collideandmove()
