scr_getinput()
image_xscale = 1
image_speed = 0.3
mask_index = spr_player_mask
dashAnim = 1
double_jump = 0
canClimb = 1
move = (key_left + key_right)
superdashing = 0
hsp = (move * movespeed)
incar = 1
movespeed = 6
if (vsp < 12)
    vsp += grav
mask_index = spr_carmask
if (charselect == 1)
{
    if (move == 1)
        sprite_index = spr_player_carmove
    else if (move == -1)
        sprite_index = spr_player_moveback
    else
        sprite_index = spr_player_caridle
}
if (charselect == 2)
{
    if (move == 1)
        sprite_index = spr_player2_carmove
    else if (move == -1)
        sprite_index = spr_player2_moveback
    else
        sprite_index = spr_player2_caridle
}
if (!place_meeting(x, (y + 1), obj_wall))
{
    state = 5
    image_index = 4
    jumpAnim = 0
}
if (key_jump && place_meeting(x, (y + 1), obj_wall))
{
    vsp = -7
    state = 5
    jumpAnim = 1
    image_index = 0
}
if place_meeting(x, (y + 1), obj_spring)
{
    state = 5
    jumpAnim = 1
    image_index = 0
}
if (key_dash2 && place_meeting(x, (y + 1), obj_wall) && (!key_jump))
{
    state = 6
    image_index = 0
}
if (player == 1)
{
    if ((!instance_exists(obj_dashcloudeffect)) && place_meeting(x, (y + 1), obj_wall) && move != 0)
        instance_create(x, y, obj_dashcloudeffect)
}
if (player == 2)
{
    if ((!instance_exists(obj_dashcloudeffect2)) && place_meeting(x, (y + 1), obj_wall) && move != 0)
        instance_create(x, y, obj_dashcloudeffect2)
}
scr_collideandmove()
