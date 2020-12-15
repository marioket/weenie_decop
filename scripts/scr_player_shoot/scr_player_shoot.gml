var box, ID, ID2, ID3;
scr_getinput()
image_speed = 0.3
mask_index = spr_player_mask
move = (key_left + key_right)
if (move != 0 && floor(image_index) >= 6 && global.panic == 0)
    image_xscale = move
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
if ((!place_meeting(x, (y + 1), obj_wall)) && maxpayne == 0)
    hsp = (move * movespeed)
if ((!place_meeting(x, (y + 1), obj_wall)) && maxpayne == 1)
    hsp = (image_xscale * movespeed)
if place_meeting(x, (y + 1), obj_wall)
    hsp = 0
if (vsp < 12)
    vsp += grav
if (global.player_saltshaker == 0)
{
    if (charselect == 1)
    {
        if (place_meeting(x, (y + 1), obj_wall) && landAnim == 0)
            sprite_index = spr_player_shoot
        if (!place_meeting(x, (y + 1), obj_wall))
        {
            sprite_index = spr_player_shootair
            if (floor(image_index) == 5)
                image_speed = 0
            landAnim = 1
        }
    }
    if (charselect == 2)
    {
        if (place_meeting(x, (y + 1), obj_wall) && landAnim == 0)
            sprite_index = spr_player2_shoot
        if (!place_meeting(x, (y + 1), obj_wall))
        {
            sprite_index = spr_player2_shootair
            if (floor(image_index) == 5)
                image_speed = 0
            landAnim = 1
        }
    }
}
if (global.player_saltshaker == 1)
{
    if (charselect == 1)
    {
        if (place_meeting(x, (y + 1), obj_wall) && landAnim == 0)
            sprite_index = spr_player_shootS
        if (!place_meeting(x, (y + 1), obj_wall))
        {
            sprite_index = spr_player_shootairS
            if (floor(image_index) == 5)
                image_speed = 0
            landAnim = 1
        }
    }
    if (charselect == 2)
    {
        if (place_meeting(x, (y + 1), obj_wall) && landAnim == 0)
            sprite_index = spr_player2_shootS
        if (!place_meeting(x, (y + 1), obj_wall))
        {
            sprite_index = spr_player2_shootairS
            if (floor(image_index) == 5)
                image_speed = 0
            landAnim = 1
        }
    }
}
if (global.player_saltshaker == 0)
{
    if (charselect == 1)
    {
        if (shoot == 1 && floor(image_index) == 3)
        {
            scr_sound(9)
            if (image_xscale == 1)
                box = bbox_right
            else
                box = bbox_left
            ID = instance_create((box + (image_xscale * 60)), y, obj_ketchupbullet)
            ID.hspeed = (image_xscale * 10)
            shoot = 0
        }
    }
    if (charselect == 2)
    {
        if (shoot == 1 && floor(image_index) == 3)
        {
            scr_sound(9)
            if (image_xscale == 1)
                box = bbox_right
            else
                box = bbox_left
            ID = instance_create((box + (image_xscale * 60)), y, obj_mustardbullet)
            ID.hspeed = (image_xscale * 10)
            shoot = 0
        }
    }
}
if (global.player_saltshaker == 1)
{
    if (shoot == 1 && floor(image_index) == 3)
    {
        scr_sound(9)
        if (image_xscale == 1)
            box = bbox_right
        else
            box = bbox_left
        ID = instance_create((box + (image_xscale * 60)), y, obj_saltshotgunbullet)
        ID.hspeed = (image_xscale * 10)
        ID2 = instance_create((box + (image_xscale * 60)), y, obj_saltshotgunbullet)
        ID2.hspeed = (image_xscale * 10)
        ID2.vspeed = -2
        ID3 = instance_create((box + (image_xscale * 60)), y, obj_saltshotgunbullet)
        ID3.hspeed = (image_xscale * 10)
        ID3.vspeed = 2
        shoot = 0
    }
}
if (floor(image_index) > 6 && key_shoot && place_meeting(x, (y + 1), obj_wall))
{
    state = 15
    image_index = 1
    shoot = 1
    maxpayne = 0
}
if (floor(image_index) == 8 && landAnim == 0)
{
    state = 0
    image_index = 0
    maxpayne = 0
}
if (landAnim == 1 && place_meeting(x, (y + 1), obj_wall))
{
    state = 22
    landAnim = 0
    image_index = 0
    maxpayne = 0
}
if place_meeting(x, (y + 1), obj_spring)
{
    state = 21
    landAnim = 0
    jumpAnim = 1
    image_index = 0
    maxpayne = 0
}
scr_collideandmove()
