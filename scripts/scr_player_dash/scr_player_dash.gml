scr_getinput()
image_speed = 0.2
if (movespeed <= 8)
    movespeed += 0.25
hsp = (image_xscale * movespeed)
if (vsp < 12)
    vsp += grav
if (charselect == 1)
{
    if (dashAnim == 1)
        sprite_index = spr_player_dashstart
    if (floor(image_index) == 3 && dashAnim == 1)
    {
        if (dashAnim == 1)
        {
            image_index = 0
            dashAnim = 0
        }
    }
    if (dashAnim == 0)
    {
        sprite_index = spr_player_dash
        image_speed = 0.35
    }
}
if (charselect == 2)
{
    if (dashAnim == 1)
        sprite_index = spr_player2_dashstart
    if (floor(image_index) == 3 && dashAnim == 1)
    {
        if (dashAnim == 1)
        {
            image_index = 0
            dashAnim = 0
        }
    }
    if (dashAnim == 0)
    {
        sprite_index = spr_player2_dash
        image_speed = 0.35
    }
}
if ((!key_dash) && place_meeting(x, (y + 1), obj_wall))
{
    state = 18
    image_index = 0
    dashAnim = 1
    jumpAnim = 1
    mach2 = 0
}
else if ((!key_dash) && (!place_meeting(x, (y + 1), obj_wall)))
{
    state = 10
    image_index = 3
    dashAnim = 1
    movespeed = 4
    mach2 = 0
}
if (((place_meeting((x + 1), y, obj_wall) && image_xscale == 1) || (place_meeting((x - 1), y, obj_wall) && image_xscale == -1)) && place_meeting(x, (y + 1), obj_wall))
{
    state = 24
    image_index = 0
    dashAnim = 1
    jumpAnim = 1
    scr_sound(13)
    mach2 = 0
}
if place_meeting(x, (y + 1), obj_wall)
{
    if (mach2 < 50)
        mach2++
    if (mach2 >= 50)
    {
        state = 32
        flash = 1
        with (instance_create(x, (y + 6), obj_dasheffect))
            image_xscale = other.image_xscale
    }
}
if (!place_meeting(x, (y + 1), obj_wall))
{
    state = 30
    jumpAnim = 1
    dashAnim = 1
    image_index = 0
    mach2 = 0
}
if (key_jump && place_meeting(x, (y + 1), obj_wall))
{
    state = 30
    vsp = -8
    jumpAnim = 1
    dashAnim = 1
    image_index = 0
    scr_sound(5)
    mach2 = 0
}
if key_shoot
{
    state = 15
    vsp = -2
    shoot = 1
    maxpayne = 1
    movespeed = 4
    dashAnim = 1
    superdashing = 0
    image_index = 0
    mach2 = 0
}
if (key_attack && place_meeting(x, (y + 1), obj_wall))
{
    state = 26
    dashAnim = 0
    if (charselect == 1)
        sprite_index = spr_player_dashattack
    if (charselect == 2)
        sprite_index = spr_player2_dashattack
    image_index = 0
    mach2 = 0
}
if (place_meeting(x, y, obj_ladder) && key_up && canClimb == 1)
{
    state = 20
    dashAnim = 1
    mach2 = 0
}
if (key_down && place_meeting(x, (y + 1), obj_wall))
{
    state = 25
    jumpAnim = 1
    dashAnim = 1
    mach2 = 0
}
if place_meeting(x, (y + 1), obj_spring)
{
    state = 21
    jumpAnim = 1
    dashAnim = 1
    image_index = 0
    scr_sound(20)
    mach2 = 0
}
if ((!instance_exists(obj_dashcloudeffect)) && place_meeting(x, (y + 1), obj_wall))
    instance_create(x, y, obj_dashcloudeffect)
scr_collideandmove()
