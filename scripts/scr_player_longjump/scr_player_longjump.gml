scr_getinput()
image_speed = 0.2
mask_index = spr_player_mask
movespeed = 6
if (double_jump == 1)
{
    movespeed = 4
    move = (key_left + key_right)
    hsp = (move * movespeed)
}
if (double_jump == 0)
    hsp = (image_xscale * movespeed)
if (vsp < 12)
    vsp += grav
if (charselect == 1)
{
    if (double_jump == 0)
    {
        if (jumpAnim == 1)
            sprite_index = spr_player_longjump
        if (floor(image_index) == 4)
        {
            jumpAnim = 0
            image_speed = 0
        }
        if (jumpAnim == 0)
            sprite_index = spr_player_longjump
    }
}
if (charselect == 2)
{
    if (double_jump == 0)
    {
        if (jumpAnim == 1)
            sprite_index = spr_player2_longjump
        if (floor(image_index) == 4)
        {
            jumpAnim = 0
            image_speed = 0
        }
        if (jumpAnim == 0)
            sprite_index = spr_player2_longjump
    }
}
if (key_shoot && double_jump == 0)
{
    state = 15
    image_index = 0
    shoot = 1
    movespeed = 4
}
if key_shoot
{
    if (player == 1 && global.player_rage == 7)
    {
        state = 31
        image_index = 0
        shoot = 1
        movespeed = 4
    }
    if (player == 2 && global.player2_rage == 7)
    {
        state = 31
        image_index = 0
        shoot = 1
        movespeed = 4
    }
}
if (key_attack && double_jump == 0)
{
    state = 23
    dashAnim = 1
}
if (charselect == 1)
{
    if (key_up && key_dash2 && double_jump == 0 && superdashing == 0)
    {
        double_jump = 1
        vsp = -5
        sprite_index = spr_player_doublejump
        with (instance_create(x, y, obj_bun))
            image_xscale = other.image_xscale
        instance_create(x, y, obj_squirteffect)
    }
    if (key_down && key_dash2 && double_jump == 0 && superdashing == 0)
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
    if (key_up && key_dash2 && double_jump == 0 && superdashing == 0)
    {
        double_jump = 1
        vsp = -5
        sprite_index = spr_player2_doublejump
        with (instance_create(x, y, obj_bun2))
            image_xscale = other.image_xscale
        instance_create(x, y, obj_squirteffect)
    }
    if (key_down && key_dash2 && double_jump == 0 && superdashing == 0)
    {
        double_jump = 1
        vsp = 10
        sprite_index = spr_player2_dumblejump
        with (instance_create(x, y, obj_bun2))
            image_xscale = other.image_xscale
        instance_create(x, y, obj_squirtupeffect)
    }
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
if place_meeting(x, (y + 1), obj_spring)
{
    state = 21
    jumpAnim = 1
    image_index = 0
    double_jump = 0
}
if ((place_meeting((x + 1), y, obj_wall) && image_xscale == 1 && double_jump != 1) || (place_meeting((x - 1), y, obj_wall) && image_xscale == -1 && double_jump != 1 && superdashing == 0))
{
    state = 24
    image_index = 0
    dashAnim = 1
    movespeed = 4
    movespeed = 4
    scr_sound(13)
}
if (place_meeting(x, (y + 1), obj_wall) && player == 1 && superdashing == 0 && wall_jumping == 0)
{
    state = 14
    dashAnim = 1
    image_index = 0
    movespeed = 4
}
if (place_meeting(x, (y + 1), obj_wall) && player == 2 && superdashing == 0 && wall_jumping == 0)
{
    state = 14
    dashAnim = 1
    image_index = 0
    movespeed = 4
}
if (superdashing == 1 && (place_meeting(x, (y + 1), obj_wall) || place_meeting((x - 1), y, obj_wall) || place_meeting((x + 1), y, obj_wall)) && wall_jumping == 0)
{
    state = 32
    dashAnim = 0
    image_index = 0
}
if (place_meeting(x, (y + 1), obj_wall) && key_down && double_jump != 1)
{
    state = 25
    superdashing = 0
}
if (place_meeting(x, (y + 1), obj_wall) && (!key_down) && double_jump != 1 && key_dash && superdashing == 0)
{
    state = 17
    dashAnim = 1
}
if (place_meeting(x, (y + 1), obj_wall) && (!key_down) && double_jump != 1 && key_dash && superdashing == 1)
{
    state = 32
    dashAnim = 1
}
if (place_meeting(x, (y + 1), obj_wall) && input_buffer_jump < 5)
{
    vsp = -5
    state = 8
    jumpAnim = 1
    double_jump = 0
    image_index = 0
    movespeed = 4
    scr_sound(8)
    with (instance_create(x, y, obj_longjumpeffect))
        image_xscale = other.image_xscale
}
if (((place_meeting((x + 1), y, obj_wall) && image_xscale == 1) || (place_meeting((x - 1), y, obj_wall) && image_xscale == -1)) && superdashing == 0 && wall_jumping == 0 && input_buffer_walljump < 15 && double_jump == 1)
{
    state = 33
    image_index = 0
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
    movespeed = 4
}
if key_jump
    input_buffer_walljump = 0
if key_jump
    input_buffer_jump = 0
scr_collideandmove()
