scr_getinput()
image_speed = 0.2
mask_index = spr_player_mask
double_jump = 0
canClimb = 1
move = (key_left + key_right)
superdashing = 0
hsp = (move * movespeed)
if (vsp < 12)
    vsp += grav
if (key_shoot && place_meeting(x, (y + 1), obj_wall))
{
    if (player == 1 && global.player_rage != 7)
    {
        state = 15
        image_index = 0
        shoot = 1
    }
    if (player == 2 && global.player2_rage != 7)
    {
        state = 15
        image_index = 0
        shoot = 1
    }
}
if (key_shoot && place_meeting(x, (y + 1), obj_wall))
{
    if (player == 1 && global.player_rage == 7)
    {
        state = 31
        image_index = 0
        shoot = 1
    }
    if (player == 2 && global.player2_rage == 7)
    {
        state = 31
        image_index = 0
        shoot = 1
    }
}
if (key_down && (!key_jump) && place_meeting(x, (y + 1), obj_wall) && global.panic == 0)
{
    state = 13
    image_index = 0
}
if (key_down && (!key_jump) && place_meeting(x, (y + 1), obj_wall) && global.panic == 1)
{
    state = 25
    image_index = 0
}
if (charselect == 1)
{
    if (global.panic == 0)
    {
        if (move != 0)
        {
            image_xscale = move
            sprite_index = spr_player_walk
        }
        else
            sprite_index = spr_player_idle
    }
    if (global.panic == 1)
    {
        image_xscale = -1
        sprite_index = spr_player_panic
    }
    if (place_meeting((x + 1), y, obj_wall) && move == 1)
        sprite_index = spr_player_push
    if (place_meeting((x - 1), y, obj_wall) && move == -1)
        sprite_index = spr_player_push
}
if (charselect == 2)
{
    if (global.panic == 0)
    {
        if (move != 0)
        {
            image_xscale = move
            sprite_index = spr_player2_walk
        }
        else
            sprite_index = spr_player2_idle
    }
    if (global.panic == 1)
    {
        image_xscale = -1
        sprite_index = spr_player2_panic
    }
    if (place_meeting((x + 1), y, obj_wall) && move == 1)
        sprite_index = spr_player2_push
    if (place_meeting((x - 1), y, obj_wall) && move == -1)
        sprite_index = spr_player2_push
}
if (!place_meeting(x, (y + 1), obj_wall))
{
    state = 10
    image_index = 3
}
if (key_jump && place_meeting(x, (y + 1), obj_wall) && global.panic == 0)
{
    vsp = -8
    state = 10
    jumpAnim = 1
    image_index = 0
    scr_sound(5)
}
if (key_jump && place_meeting(x, (y + 1), obj_wall) && global.panic == 1)
{
    vsp = -8
    state = 30
    jumpAnim = 1
    image_index = 0
    scr_sound(5)
}
if place_meeting(x, (y + 1), obj_spring)
{
    state = 21
    jumpAnim = 1
    image_index = 0
}
if (key_attack && (!key_up))
{
    if (player == 1 && global.player_rage != 7)
    {
        vsp = -1
        state = 26
        image_speed = 0.25
        if (global.player_corndog == 0)
        {
            if (charselect == 1)
            {
                if (dashAnim == 1)
                {
                    scr_sound(6)
                    sprite_index = choose(spr_player_attack1, spr_player_attack2, spr_player_attack3)
                }
                else if (dashAnim == 0)
                    sprite_index = spr_player_dashattack
            }
            if (charselect == 2)
            {
                if (dashAnim == 1)
                {
                    scr_sound(6)
                    sprite_index = choose(72, 71, 70)
                }
                else if (dashAnim == 0)
                    sprite_index = spr_player2_dashattack
            }
        }
        if (global.player_corndog == 1)
        {
            if (charselect == 1)
            {
                if (dashAnim == 1)
                    sprite_index = choose(95, 94, 93)
                else if (dashAnim == 0)
                    sprite_index = spr_player_dashattack
            }
            if (charselect == 2)
            {
                if (dashAnim == 1)
                    sprite_index = choose(39, 38, 37)
                else if (dashAnim == 0)
                    sprite_index = spr_player2_dashattack
            }
        }
        image_index = 0
    }
    if (player == 2 && global.player2_rage != 7)
    {
        vsp = -1
        state = 26
        if (global.player_corndog == 0)
        {
            if (charselect == 1)
            {
                if (dashAnim == 1)
                {
                    scr_sound(6)
                    sprite_index = choose(125, 124, 123)
                }
                else if (dashAnim == 0)
                    sprite_index = spr_player_dashattack
            }
            if (charselect == 2)
            {
                if (dashAnim == 1)
                {
                    scr_sound(6)
                    sprite_index = choose(72, 71, 70)
                }
                else if (dashAnim == 0)
                    sprite_index = spr_player2_dashattack
            }
        }
        if (global.player_corndog == 0)
        {
            if (charselect == 1)
            {
                if (dashAnim == 1)
                    sprite_index = choose(95, 94, 93)
                else if (dashAnim == 0)
                    sprite_index = spr_player_dashattack
            }
            if (charselect == 2)
            {
                if (dashAnim == 1)
                    sprite_index = choose(39, 38, 37)
                else if (dashAnim == 0)
                    sprite_index = spr_player2_dashattack
            }
        }
        image_speed = 0.25
        image_index = 0
    }
}
if (key_attack && key_up)
{
    state = 28
    vsp = -5
    image_index = 0
}
if (key_attack && (!key_up))
{
    if (player == 1 && global.player_rage == 7)
    {
        state = 34
        super_timer = 200
        image_index = 0
    }
    if (player == 2 && global.player2_rage == 7)
    {
        state = 34
        super_timer = 200
        image_index = 0
    }
}
if (place_meeting(x, y, obj_ladder) && key_up && canClimb == 1)
    state = 20
if (key_dash2 && place_meeting(x, (y + 1), obj_wall) && (!key_jump))
{
    state = 17
    image_index = 0
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
if (player == 2)
{
    if ((!instance_exists(obj_dashcloudeffect2)) && place_meeting(x, (y + 1), obj_wall) && move != 0)
        instance_create(x, y, obj_dashcloudeffect2)
}
scr_collideandmove()
