scr_getinput()
image_xscale = 1
movespeed = 6
image_speed = 0.25
superdashing = 0
move = (key_left + key_right)
mask_index = spr_carmask
dashAnim = 1
movespeed = 4
if (cardashing == 0)
    hsp = (move * movespeed)
if (cardashing == 1)
    hsp = ((image_xscale * movespeed) + 2)
if (vsp < 12)
    vsp += grav
if (charselect == 1)
{
    if (jumpAnim == 1)
        sprite_index = spr_player_carjump
    if (floor(image_index) == 5)
    {
        jumpAnim = 0
        image_speed = 0
    }
    if (jumpAnim == 0)
    {
        sprite_index = spr_player_carjump
        image_index = 5
        image_speed = 0
    }
}
if (charselect == 2)
{
    if (jumpAnim == 1)
        sprite_index = spr_player2_carjump
    if (floor(image_index) == 5)
    {
        jumpAnim = 0
        image_speed = 0
    }
    if (jumpAnim == 0)
    {
        sprite_index = spr_player2_carjump
        image_index = 5
        image_speed = 0
    }
}
if place_meeting(x, (y + 1), obj_wall)
{
    instance_create(x, (y + 24), obj_cloudeffect)
    state = 3
    jumpDashed = 0
    image_index = 0
    cardashing = 0
}
if (place_meeting(x, (y + 1), obj_wall) && key_dash)
{
    instance_create(x, (y + 24), obj_cloudeffect)
    state = 6
    jumpDashed = 0
    image_index = 0
    cardashing = 0
}
if (place_meeting(x, (y + 1), obj_wall) && input_buffer_jump < 5)
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
if key_jump
    input_buffer_jump = 0
scr_collideandmove()
