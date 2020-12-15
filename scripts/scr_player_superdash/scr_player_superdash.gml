scr_getinput()
image_speed = 0.3
mask_index = spr_player_mask
movespeed = 12
dashAnim = 0
mach2 = 0
superdashing = 1
hsp = (image_xscale * movespeed)
if (place_meeting(x, y, obj_ladder) && key_up && canClimb == 1)
{
    state = 20
    dashAnim = 1
    superdashing = 0
}
if (charselect == 1)
{
    sprite_index = spr_player_superdash
    image_speed = 0.35
}
if (charselect == 2)
{
    sprite_index = spr_player2_superdash
    image_speed = 0.35
}
if (charselect == 1)
{
    if ((place_meeting((x + 1), y, obj_wall) && image_xscale == 1) || (place_meeting((x - 1), y, obj_wall) && image_xscale == -1))
    {
        vsp = -12
        sprite_index = spr_player_superdashside
        if key_jump
        {
            state = 33
            dashAnim = 1
            image_index = 0
        }
        if (!key_dash)
        {
            state = 10
            dashAnim = 1
            image_index = 3
            movespeed = 4
            vsp = -2
        }
        if place_meeting(x, (y - 1), obj_wall)
        {
            state = 38
            jumpAnim = 1
            dashAnim = 1
            superdashing = 0
            movespeed = 4
            image_index = 0
            alarm[3] = 40
            obj_camera.shake = 1
            obj_camera.alarm[0] = 10
            scr_sound(17)
            mach2 = 0
        }
    }
    else if (dashAnim == 0)
    {
        vsp = 0
        sprite_index = spr_player_superdash
    }
}
if (charselect == 2)
{
    if ((place_meeting((x + 1), y, obj_wall) && image_xscale == 1) || (place_meeting((x - 1), y, obj_wall) && image_xscale == -1))
    {
        vsp = -12
        sprite_index = spr_player2_superdashside
        if key_jump
        {
            state = 33
            dashAnim = 1
            image_index = 0
        }
        if (!key_dash)
        {
            state = 10
            dashAnim = 1
            image_index = 3
            movespeed = 4
            vsp = -2
        }
        if place_meeting(x, (y - 1), obj_wall)
        {
            state = 38
            jumpAnim = 1
            dashAnim = 1
            superdashing = 0
            movespeed = 4
            image_index = 0
            alarm[3] = 40
            obj_camera.shake = 1
            obj_camera.alarm[0] = 10
            mach2 = 0
        }
    }
    else if (dashAnim == 0)
    {
        vsp = 0
        sprite_index = spr_player2_superdash
    }
}
if (key_down && place_meeting(x, (y + 1), obj_wall))
{
    state = 25
    jumpAnim = 1
    dashAnim = 1
    mach2 = 0
}
if (key_jump && (!((place_meeting((x + 1), y, obj_wall) && image_xscale == 1) || (place_meeting((x - 1), y, obj_wall) && image_xscale == -1))))
{
    state = 30
    vsp = -8
    jumpAnim = 1
    dashAnim = 1
    image_index = 0
    movespeed = 8
    scr_sound(5)
    mach2 = 0
}
if ((!(place_meeting((x + 1), y, obj_wall) || place_meeting((x - 1), y, obj_wall))) && (!place_meeting(x, (y + 1), obj_wall)))
{
    state = 30
    jumpAnim = 1
    image_index = 0
    mach2 = 0
}
if ((!key_dash) && place_meeting(x, (y + 1), obj_wall))
{
    dashAnim = 1
    superdashing = 0
    state = 18
    mach2 = 0
}
if place_meeting(x, (y + 1), obj_spring)
{
    state = 21
    jumpAnim = 1
    dashAnim = 1
    image_index = 0
    superdashing = 0
    mach2 = 0
}
if (sprite_index == spr_player_superdash || sprite_index == spr_player2_superdash)
{
    if ((!instance_exists(obj_dashcloudeffect)) && place_meeting(x, (y + 1), obj_wall))
        instance_create(x, y, obj_dashcloudeffect)
}
scr_collideandmove()
