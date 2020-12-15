scr_getinput()
image_xscale = 1
image_speed = 0.3
mask_index = spr_carmask
if (movespeed != 12)
    movespeed += 1
hsp = (image_xscale * movespeed)
if (vsp < 12)
    vsp += grav
if (charselect == 1)
{
    if (dashAnim == 1)
        sprite_index = spr_player_cardashstart
    if (floor(image_index) == 2 && dashAnim == 1)
    {
        with (instance_create(x, (y + 6), obj_dasheffect))
            image_xscale = other.image_xscale
        if (dashAnim == 1)
        {
            image_index = 0
            dashAnim = 0
        }
    }
    if (dashAnim == 0)
    {
        sprite_index = spr_player_cardash
        image_speed = 0.35
    }
}
if (charselect == 2)
{
    if (dashAnim == 1)
        sprite_index = spr_player2_cardashstart
    if (floor(image_index) == 2 && dashAnim == 1)
    {
        with (instance_create(x, (y + 6), obj_dasheffect))
            image_xscale = other.image_xscale
        if (dashAnim == 1)
        {
            image_index = 0
            dashAnim = 0
        }
    }
    if (dashAnim == 0)
    {
        sprite_index = spr_player2_cardash
        image_speed = 0.35
    }
}
if ((!key_dash) && place_meeting(x, (y + 1), obj_wall))
{
    state = 3
    image_index = 0
    dashAnim = 1
    jumpAnim = 1
}
else if ((!key_dash) && (!place_meeting(x, (y + 1), obj_wall)))
{
    state = 5
    image_index = 3
    dashAnim = 1
    movespeed = 4
}
if (place_meeting((x + 1), y, obj_wall) && image_xscale == 1)
{
    state = 4
    image_index = 0
    dashAnim = 1
    jumpAnim = 0
}
if (key_jump && place_meeting(x, (y + 1), obj_wall))
{
    vsp = -7
    state = 5
    jumpAnim = 1
    image_index = 0
    cardashing = 1
}
if place_meeting(x, (y + 1), obj_spring)
{
    state = 5
    jumpAnim = 1
    dashAnim = 1
    image_index = 0
}
if ((!instance_exists(obj_dashcloudeffect)) && place_meeting(x, (y + 1), obj_wall))
    instance_create(x, y, obj_dashcloudeffect)
scr_collideandmove()
