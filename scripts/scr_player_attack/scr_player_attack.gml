scr_getinput()
image_speed = 0.25
mask_index = spr_player_mask
move = (key_left + key_right)
if (wall_jumping == 1)
{
    if (jumpAnim == 1)
    {
        if (image_xscale == 1)
        {
            image_xscale = -1
            jumpAnim = 0
        }
        else if (image_xscale == -1)
        {
            image_xscale = 1
            jumpAnim = 0
        }
    }
    move = image_xscale
}
if (dashAnim == 1)
    hsp = (move * movespeed)
if (dashAnim == 0)
    hsp = (image_xscale * movespeed)
if (place_meeting(x, (y + 1), obj_wall) && dashAnim == 1)
    hsp = 0
if (vsp < 12)
    vsp += grav
if (global.player_corndog == 0)
{
    if (player == 1)
    {
        if (dashAnim == 1)
        {
            if /*(floor(image_index) == 0)*/ !instance_exists(obj_attackhitbox)
            {
                with (instance_create(x, y, obj_attackhitbox))
                    image_xscale = other.image_xscale
            }
        }
        else if (dashAnim == 0)
        {
            if (floor(image_index) == 0)
            {
                with (instance_create(x, y, obj_dashattackhitbox))
                    image_xscale = other.image_xscale
            }
        }
    }
    if (player == 2)
    {
        if (dashAnim == 1)
        {
            if (floor(image_index) == 0)
            {
                with (instance_create(x, y, obj_attackhitbox2))
                    image_xscale = other.image_xscale
            }
        }
        else if (dashAnim == 0)
        {
            if (floor(image_index) == 0)
            {
                with (instance_create(x, y, obj_dashattackhitbox2))
                    image_xscale = other.image_xscale
            }
        }
    }
}
if (global.player_corndog == 1)
{
    if (dashAnim == 1)
    {
        if (floor(image_index) == 0)
        {
            with (instance_create(x, y, obj_attackShitbox))
                image_xscale = other.image_xscale
        }
    }
    else if (dashAnim == 0)
    {
        if (floor(image_index) == 0)
        {
            with (instance_create(x, y, obj_dashattackhitbox))
                image_xscale = other.image_xscale
        }
    }
}
if (floor(image_index) == 4 && dashAnim == 1 && place_meeting(x, (y + 1), obj_wall))
{
    state = 0
    movespeed = 4
    dashAnim = 1
}
if (floor(image_index) == 4 && dashAnim == 1 && (!place_meeting(x, (y + 1), obj_wall)) && global.panic == 0)
{
    state = 10
    movespeed = 4
    dashAnim = 1
}
if (floor(image_index) == 4 && dashAnim == 1 && (!place_meeting(x, (y + 1), obj_wall)) && global.panic == 1)
{
    state = 30
    movespeed = 4
    jumpAnim = 1
}
if (floor(image_index) == 7 && dashAnim == 0)
{
    state = 17
    image_index = 0
    movespeed = 4
    dashAnim = 0
}
if (dashAnim == 0 && (place_meeting((x + 1), y, obj_wall) || place_meeting((x - 1), y, obj_wall)))
{
    state = 24
    image_index = 0
    movespeed = 4
    dashAnim = 1
}
if place_meeting(x, (y + 1), obj_spring)
{
    state = 21
    jumpAnim = 1
    image_index = 0
    movespeed = 4
    dashAnim = 1
}
scr_collideandmove()
