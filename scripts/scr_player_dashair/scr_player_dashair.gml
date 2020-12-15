scr_getinput()
image_speed = 0.2
move = (key_left + key_right)
if (superdashing == 1)
    movespeed = 6
else
    movespeed = 4
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
if (global.panic == 0)
    hsp = (image_xscale * movespeed)
if (global.panic == 1)
    hsp = (move * movespeed)
if (vsp < 12)
    vsp += grav
if (charselect == 1)
{
    if (jumpAnim == 1)
        sprite_index = spr_player_dashhop
    if (floor(image_index) == 3)
    {
        jumpAnim = 0
        sprite_index = spr_player_dashair
        if (jumpAnim == 1)
            image_index = 0
    }
    else if (wall_jumping == 1)
        sprite_index = spr_player_dashair
}
if (charselect == 2)
{
    if (jumpAnim == 1)
        sprite_index = spr_player2_dashhop
    if (floor(image_index) == 3)
    {
        jumpAnim = 0
        sprite_index = spr_player2_dashair
        if (jumpAnim == 1)
            image_index = 0
    }
    else if (wall_jumping == 1)
        sprite_index = spr_player2_dashair
}
if ((!key_dash) && wall_jumping == 0 && global.panic == 0)
{
    state = 10
    image_index = 3
    dashAnim = 1
    movespeed = 4
    superdashing = 0
    image_index = 3
}
if (place_meeting(x, (y + 1), obj_wall) && superdashing == 0 && wall_jumping == 0)
{
    state = 17
    dashAnim = 1
    image_index = 0
}
if ((place_meeting(x, (y + 1), obj_wall) || (place_meeting((x + 1), y, obj_wall) && image_xscale == 1) || (place_meeting((x - 1), y, obj_wall) && image_xscale == -1)) && superdashing == 1 && wall_jumping == 0)
{
    state = 32
    dashAnim = 1
    image_index = 0
}
if ((!key_dash) && wall_jumping == 1 && place_meeting(x, (y + 1), obj_wall))
{
    state = 14
    dashAnim = 1
    movespeed = 4
    wall_jumping = 0
    image_index = 0
}
if (key_attack && (!key_up) && (!key_down) && double_jump == 0 && superdashing == 0)
{
    state = 26
    image_speed = 0.25
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
}
if (key_attack && key_up && (!key_down) && double_jump == 0)
{
    state = 28
    image_index = 0
}
if (key_attack && (!key_up) && key_down && double_jump == 0)
{
    state = 29
    image_index = 0
}
if key_shoot
{
    state = 15
    shoot = 1
    movespeed = 4
    dashAnim = 1
    superdashing = 0
}
if (place_meeting(x, y, obj_ladder) && key_up && canClimb == 1)
{
    state = 20
    dashAnim = 1
    movespeed = 4
}
if key_jump
    input_buffer_walljump = 0
if (((place_meeting((x + 1), y, obj_wall) && image_xscale == 1) || (place_meeting((x - 1), y, obj_wall) && image_xscale == -1)) && superdashing == 0 && wall_jumping == 0 && input_buffer_walljump < 15)
{
    state = 33
    image_index = 0
}
if place_meeting(x, (y + 1), obj_spring)
{
    state = 21
    jumpAnim = 1
    dashAnim = 1
    image_index = 0
}
scr_collideandmove()
