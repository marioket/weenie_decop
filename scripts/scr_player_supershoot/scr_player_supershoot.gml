var box, ID;
scr_getinput()
image_speed = 0.25
mask_index = spr_player_mask
if (player == 1)
    global.player_rage = 0
if (player == 2)
    global.player2_rage = 0
move = (key_left + key_right)
hsp = 0
if (vsp < 12)
    vsp += grav
if (charselect == 1)
    sprite_index = spr_player_supershoot
if (charselect == 2)
    sprite_index = spr_player2_supershoot
if (charselect == 1)
{
    if (shoot == 1 && floor(image_index) == 7)
    {
        if (player == 1)
            global.player_rage = 0
        if (player == 2)
            global.player2_rage = 0
        if (image_xscale == 1)
            box = bbox_right
        else
            box = bbox_left
        ID = instance_create((box + (image_xscale * 60)), y, obj_superketchupbullet)
        ID.hspeed = (image_xscale * 10)
        shoot = 0
    }
    if (move != 0 && floor(image_index) < 7)
        image_xscale = move
}
if (charselect == 1)
    sprite_index = spr_player_supershoot
if (charselect == 2)
    sprite_index = spr_player2_supershoot
if (charselect == 1)
{
    if (shoot == 1 && floor(image_index) == 7)
    {
        if (player == 1)
            global.player_rage = 0
        if (player == 2)
            global.player2_rage = 0
        if (image_xscale == 1)
            box = bbox_right
        else
            box = bbox_left
        ID = instance_create((box + (image_xscale * 60)), y, obj_superketchupbullet)
        ID.hspeed = (image_xscale * 10)
        shoot = 0
    }
    if (move != 0 && floor(image_index) < 7)
        image_xscale = move
}
if (charselect == 2)
{
    if (shoot == 1 && floor(image_index) == 7)
    {
        if (player == 1)
            global.player_rage = 0
        if (player == 2)
            global.player2_rage = 0
        if (image_xscale == 1)
            box = bbox_right
        else
            box = bbox_left
        ID = instance_create((box + (image_xscale * 60)), y, obj_supermustardbullet)
        ID.hspeed = (image_xscale * 10)
        shoot = 0
    }
    if (move != 0 && floor(image_index) < 7)
        image_xscale = move
}
if (floor(image_index) == 12)
{
    state = 0
    image_index = 0
}
scr_collideandmove()
