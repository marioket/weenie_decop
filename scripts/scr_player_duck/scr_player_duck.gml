scr_getinput()
image_speed = 0.5
mask_index = spr_player_duckmask
move = (key_left + key_right)
if (move != 0 && global.panic == 0)
    image_xscale = move
if (vsp < 12)
    vsp += grav
hsp = 0
if (charselect == 1)
{
    sprite_index = spr_player_duck
    if (floor(image_index) == 3)
        image_speed = 0
}
if (charselect == 2)
{
    sprite_index = spr_player2_duck
    if (floor(image_index) == 3)
        image_speed = 0
}
if (key_dash && image_speed == 0)
{
    state = 25
    hsp = (image_xscale * 10)
    movespeed = 10
}
if (key_attack2 && image_speed == 0)
{
    state = 7
    hsp = (image_xscale * 10)
    movespeed = 10
    dashAnim = 1
    image_index = 0
}
if (key_shoot && place_meeting(x, (y + 1), obj_wall) && (!place_meeting(x, (y - 1), obj_wall)))
{
    state = 15
    image_index = 0
    shoot = 1
    movespeed = 4
}
if (key_jump && place_meeting(x, (y + 1), obj_wall))
{
    vsp = -5
    state = 10
    jumpAnim = 1
    image_index = 0
    scr_sound(5)
}
if (((!key_down) || (!place_meeting(x, (y + 1), obj_wall))) && (!place_meeting(x, (y - 1), obj_wall)))
{
    state = 0
    mask_index = spr_player_mask
    movespeed = 4
}
scr_collideandmove()
