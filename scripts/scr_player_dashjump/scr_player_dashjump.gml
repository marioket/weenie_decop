scr_getinput()
image_speed = 0.4
movespeed = 6
mask_index = spr_player_mask
double_jump = 0
jumpDashed = 1
superdashing = 0
hsp = (image_xscale * movespeed)
if (vsp < 12)
    vsp += grav
if (charselect == 1)
    sprite_index = spr_player_dashjump
if (charselect == 2)
    sprite_index = spr_player2_dashjump
if ((place_meeting((x + 1), y, obj_wall) && image_xscale == 1) || (place_meeting((x - 1), y, obj_wall) && image_xscale == -1))
{
    state = 24
    image_index = 0
    dashAnim = 1
    movespeed = 4
    scr_sound(13)
}
if ((place_meeting(x, (y + 1), obj_wall) && place_meeting((x + 1), y, obj_wall) && image_xscale == 1) || (place_meeting((x - 1), y, obj_wall) && image_xscale == -1))
{
    state = 24
    image_index = 0
    dashAnim = 1
    movespeed = 4
    scr_sound(13)
}
if (place_meeting(x, (y + 1), obj_wall) && (!key_down))
{
    state = 39
    image_index = 0
    dashAnim = 1
    movespeed = 4
    scr_sound(17)
}
if (key_down && place_meeting(x, (y + 1), obj_wall))
{
    state = 25
    image_index = 0
    dashAnim = 1
}
if place_meeting(x, (y + 1), obj_spring)
{
    state = 21
    jumpAnim = 1
    image_index = 0
}
if (place_meeting(x, y, obj_ladder) && key_up && canClimb == 1)
    state = 20
scr_collideandmove()
