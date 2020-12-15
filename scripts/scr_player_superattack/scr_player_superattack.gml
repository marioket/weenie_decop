scr_getinput()
image_speed = 0.3
if (vsp < 12)
    vsp += grav
movespeed = 6
move = (key_left + key_right)
if (dashAnim == 0)
    hsp = (move * movespeed)
if (player == 1)
{
    if (floor(image_index) == 0 && (sprite_index == spr_player_superattack || sprite_index == spr_player2_superattack))
    {
        with (instance_create(x, y, obj_attackhitbox))
            image_xscale = other.image_xscale
    }
}
if (player == 2)
{
    if (floor(image_index) == 0 && (sprite_index == spr_player_superattack || sprite_index == spr_player2_superattack))
    {
        with (instance_create(x, y, obj_attackhitbox2))
            image_xscale = other.image_xscale
    }
}
if (charselect == 1)
{
    if (dashAnim == 1)
    {
        if (player == 1)
            global.player_rage = 0
        if (player == 2)
            global.player2_rage = 0
        sprite_index = spr_player_superattackstart
        hsp = 0
    }
    if (floor(image_index) == 10 && dashAnim == 1)
    {
        if (dashAnim == 1)
        {
            image_index = 0
            dashAnim = 0
        }
    }
    if (dashAnim == 0)
    {
        sprite_index = spr_player_superattack
        image_speed = 0.35
    }
    if (move != 0)
        image_xscale = move
}
if (charselect == 2)
{
    if (dashAnim == 1)
    {
        if (player == 1)
            global.player_rage = 0
        if (player == 2)
            global.player2_rage = 0
        sprite_index = spr_player2_superattackstart
        hsp = 0
    }
    if (floor(image_index) == 10 && dashAnim == 1)
    {
        if (dashAnim == 1)
        {
            image_index = 0
            dashAnim = 0
        }
    }
    if (dashAnim == 0)
    {
        sprite_index = spr_player2_superattack
        image_speed = 0.35
    }
    if (move != 0)
        image_xscale = move
}
if (super_timer > 0)
{
    super_timer -= 1
    if (super_timer <= 0)
    {
        state = 0
        dashAnim = 1
        movespeed = 4
    }
}
if (key_jump && place_meeting(x, (y + 1), obj_wall) && dashAnim == 0)
    vsp = -5
if (place_meeting(x, y, obj_ladder) && key_up && canClimb == 1)
{
    state = 20
    dashAnim = 1
    superdashing = 0
    movespeed = 4
}
if (sprite_index == spr_player_superattack || sprite_index == spr_player2_superattack)
{
    if ((!instance_exists(obj_dashcloudeffect)) && place_meeting(x, (y + 1), obj_wall))
        instance_create(x, y, obj_dashcloudeffect)
}
scr_collideandmove()
