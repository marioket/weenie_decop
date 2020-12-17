scr_getinput()
image_speed = 0.2
superdashing = 0
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
if (move != 0 && wall_jumping == 0)
    image_xscale = move
if (vsp < 12)
    vsp += grav
if (charselect == 1)
{
    if (double_jump == 0)
    {
        if (jumpAnim == 1)
            sprite_index = spr_player_jump
        if (floor(image_index) == 7)
        {
            jumpAnim = 0
            image_speed = 0
        }
        if (jumpAnim == 0)
            sprite_index = spr_player_jump
    }
}
if (charselect == 2)
{
    if (double_jump == 0)
    {
        if (jumpAnim == 1)
            sprite_index = spr_player2_jump
        if (floor(image_index) == 7)
        {
            jumpAnim = 0
            image_speed = 0
        }
        if (jumpAnim == 0)
            sprite_index = spr_player2_jump
    }
}
if place_meeting(x, (y + 1), obj_wall)
{
    instance_create(x, (y + 24), obj_cloudeffect)
    state = 14
    jumpDashed = 0
    image_index = 0
}
if (place_meeting(x, (y + 1), obj_wall) && input_buffer_jump < 5)
{
    vsp = -5
    state = 10
    jumpAnim = 1
    double_jump = 0
    image_index = 0
    scr_sound(5)
}
if (key_shoot && double_jump == 0)
{
    state = 15
    image_index = 0
    shoot = 1
}
if key_shoot
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
if (key_attack && (!key_up) && (!key_down) && double_jump == 0)
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
                sprite_index = choose(spr_player_attack1, spr_player_attack1, spr_player_attack1)
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
if (key_attack && (!key_up) && (!key_down))
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
if (charselect == 1)
{
    if (key_up && key_dash2 && double_jump == 0)
    {
        double_jump = 1
        vsp = -5
        sprite_index = spr_player_doublejump
        with (instance_create(x, y, obj_bun))
            image_xscale = other.image_xscale
        instance_create(x, y, obj_squirteffect)
    }
    if (key_down && key_dash2 && double_jump == 0)
    {
        double_jump = 1
        vsp = 10
        sprite_index = spr_player_dumblejump
        with (instance_create(x, y, obj_bun))
            image_xscale = other.image_xscale
        instance_create(x, y, obj_squirtupeffect)
    }
}
if (charselect == 2)
{
    if (key_up && key_dash2 && double_jump == 0)
    {
        double_jump = 1
        vsp = -5
        sprite_index = spr_player2_doublejump
        with (instance_create(x, y, obj_bun2))
            image_xscale = other.image_xscale
        instance_create(x, y, obj_squirteffect)
    }
    if (key_down && key_dash2 && double_jump == 0)
    {
        double_jump = 1
        vsp = 10
        sprite_index = spr_player2_dumblejump
        with (instance_create(x, y, obj_bun2))
            image_xscale = other.image_xscale
        instance_create(x, y, obj_squirtupeffect)
    }
}
if place_meeting(x, (y + 1), obj_spring)
{
    state = 21
    jumpAnim = 1
    image_index = 0
    double_jump = 0
}
if (place_meeting(x, y, obj_ladder) && key_up && canClimb == 1)
{
    state = 20
    double_jump = 0
}
if key_jump
    input_buffer_walljump = 0
if key_jump
    input_buffer_jump = 0
if (((place_meeting((x + 1), y, obj_wall) && image_xscale == 1) || (place_meeting((x - 1), y, obj_wall) && image_xscale == -1)) && superdashing == 0 && wall_jumping == 0 && input_buffer_walljump < 15)
{
    state = 33
    image_index = 0
}
if (key_dash && double_jump == 0 && wall_jumping == 0)
{
    state = 17
    jumpAnim = 1
    image_index = 0
}
scr_collideandmove()
