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
hsp = (move * movespeed)
if (vsp < 12)
    vsp += grav
if (charselect == 1)
    sprite_index = spr_player_attackup
if (charselect == 2)
    sprite_index = spr_player2_attackup
if (player == 1)
{
    if (floor(image_index) == 1)
    {
        with (instance_create(x, y, obj_attackuphitbox))
            image_xscale = other.image_xscale
    }
}
if (player == 2)
{
    if (floor(image_index) == 1)
    {
        with (instance_create(x, y, obj_attackuphitbox2))
            image_xscale = other.image_xscale
    }
}
if (floor(image_index) == 4 && global.panic == 0)
{
    state = 10
    movespeed = 4
}
if (floor(image_index) == 4 && global.panic == 1)
{
    state = 30
    movespeed = 4
    jumpAnim = 1
}
if place_meeting(x, (y + 1), obj_wall)
{
    state = 39
    movespeed = 4
    image_index = 0
    scr_sound(17)
}
if place_meeting(x, (y + 1), obj_spring)
{
    state = 21
    jumpAnim = 1
    image_index = 0
    movespeed = 4
}
scr_collideandmove()
