scr_getinput()
image_speed = 0.2
if (movespeed != 0)
    movespeed -= 0.2
if (movespeed == 0)
    superdashing = 0
mask_index = spr_player_duckmask
hsp = (image_xscale * movespeed)
if (vsp < 12)
    vsp += grav
if (charselect == 1)
{
    if (dashAnim == 1)
        sprite_index = spr_player_slidekickstart
    if (floor(image_index) == 2 && dashAnim == 1)
    {
        if (dashAnim == 1)
        {
            image_index = 0
            dashAnim = 0
        }
    }
    if (dashAnim == 0)
    {
        sprite_index = spr_player_slidekick
        image_speed = 0.35
    }
}
if (charselect == 2)
{
    if (dashAnim == 1)
        sprite_index = spr_player2_slidekickstart
    if (floor(image_index) == 2 && dashAnim == 1)
    {
        if (dashAnim == 1)
        {
            image_index = 0
            dashAnim = 0
        }
    }
    if (dashAnim == 0)
    {
        sprite_index = spr_player2_slidekick
        image_speed = 0.35
    }
}
if ((!key_down) && hsp == 0 && superdashing == 0 && global.panic == 0)
{
    state = 13
    movespeed = 4
    image_index = 2
    dashAnim = 1
}
if (key_down && hsp == 0 && superdashing == 0 && global.panic == 0)
{
    state = 13
    movespeed = 4
    image_index = 2
    dashAnim = 1
}
if ((!key_down) && superdashing == 1 && (!place_meeting(x, (y - 1), obj_wall)))
{
    state = 32
    dashAnim = 0
    movespeed = 4
}
if (place_meeting((x + 1), y, obj_wall) || place_meeting((x - 1), y, obj_wall))
{
    state = 24
    movespeed = 4
    image_index = 0
    dashAnim = 1
    superdashing = 0
}
if (player == 1)
{
    if (global.panic == 1)
    {
        if ((!instance_exists(obj_dashcloudeffect_panic)) && place_meeting(x, (y + 1), obj_wall))
            instance_create(x, y, obj_dashcloudeffect_panic)
    }
    if (global.panic == 0)
    {
        if ((!instance_exists(obj_dashcloudeffect)) && place_meeting(x, (y + 1), obj_wall) && move != 0)
            instance_create(x, y, obj_dashcloudeffect)
    }
}
if (!place_meeting(x, (y + 1), obj_wall))
{
    state = 23
    jumpAnim = 1
    superdashing = 0
    image_index = 0
    dashAnim = 1
}
if (key_jump && place_meeting(x, (y + 1), obj_wall) && (!place_meeting(x, (y - 1), obj_wall)))
{
    vsp = -5
    state = 8
    dashAnim = 1
    jumpAnim = 1
    image_index = 0
    with (instance_create(x, y, obj_longjumpeffect))
        image_xscale = other.image_xscale
}
scr_collideandmove()
