scr_getinput()
image_speed = 0.2
mask_index = spr_player_mask
double_jump = 0
movespeed = 4
superdashing = 0
landAnim = 0
dashAnim = 1
move = (key_left + key_right)
hsp = (move * movespeed)
if (vsp < 12)
    vsp += grav
if (charselect == 1)
{
    if (move != 0)
    {
        image_xscale = move
        sprite_index = spr_player_swim2
    }
    else
        sprite_index = spr_player_swim1
}
if (charselect == 2)
{
    if (move != 0)
    {
        image_xscale = move
        sprite_index = spr_player2_swim2
    }
    else
        sprite_index = spr_player2_swim1
}
if key_jump
{
    vsp = -5
    state = 10
    jumpAnim = 1
    image_index = 0
}
scr_collideandmove()
