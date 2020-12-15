scr_getinput()
image_speed = 0.2
movespeed = 4
jumpDashed = 0
double_jump = 0
superdashing = 0
move = (key_left + key_right)
hsp = (move * movespeed)
if key_dash
    hsp = (image_xscale * movespeed)
if (move != 0)
    image_xscale = move
if (vsp < 1)
    vsp += grav
if (charselect == 1)
    sprite_index = spr_player_balloonhang
if (charselect == 2)
    sprite_index = spr_player2_balloonhang
if place_meeting(x, (y + 1), obj_wall)
{
    instance_create(x, (y + 24), obj_cloudeffect)
    state = 14
    buffer_jump = 0
}
if key_shoot
{
    state = 15
    image_index = 0
    shoot = 1
}
if key_attack
{
    state = 26
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
                sprite_index = choose(72, 71, 70)
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
                sprite_index = choose(125, 124, 123)
            else if (dashAnim == 0)
                sprite_index = spr_player_dashattack
        }
        if (charselect == 2)
        {
            if (dashAnim == 1)
                sprite_index = choose(72, 71, 70)
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
                sprite_index = choose(72, 71, 70)
            else if (dashAnim == 0)
                sprite_index = spr_player2_dashattack
        }
    }
    image_speed = 0.25
}
if key_jump
{
    vsp = -3.5
    state = 10
    jumpAnim = 1
    image_index = 3
}
if place_meeting(x, (y + 1), obj_spring)
{
    state = 21
    jumpAnim = 1
    image_index = 0
}
scr_collideandmove()
