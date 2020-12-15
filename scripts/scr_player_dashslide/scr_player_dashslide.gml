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
    sprite_index = spr_player_dashslide
if (charselect == 2)
    sprite_index = spr_player2_dashslide
if ((!key_down) && ((hsp <= 0 && image_xscale == 1) || (hsp >= 0 && image_xscale == -1)) && superdashing == 0 && global.panic == 0)
{
    state = 13
    movespeed = 4
    image_index = 2
}
if (key_down && ((hsp <= 0 && image_xscale == 1) || (hsp >= 0 && image_xscale == -1)) && superdashing == 0 && global.panic == 0)
{
    state = 13
    movespeed = 4
    image_index = 2
}
if ((!key_down) && hsp <= 0 && superdashing == 0 && global.panic == 1)
{
    state = 0
    movespeed = 4
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
    scr_sound(13)
}
if key_attack
{
    state = 7
    hsp = (image_xscale * 10)
    movespeed = 10
    dashAnim = 1
    image_index = 0
}
if (key_jump && place_meeting(x, (y + 1), obj_wall) && (!place_meeting(x, (y - 1), obj_wall)))
{
    vsp = -8
    state = 8
    dashAnim = 1
    scr_sound(8)
    jumpAnim = 1
    image_index = 0
    with (instance_create(x, y, obj_longjumpeffect))
        image_xscale = other.image_xscale
}
if (!place_meeting(x, (y + 1), obj_wall))
{
    state = 23
    movespeed = 4
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
scr_collideandmove()
