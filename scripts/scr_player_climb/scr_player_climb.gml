scr_getinput()
movespeed = 2
move = (key_left + key_right)
if (charselect == 1)
    sprite_index = spr_player_climb
//if (charselect == 2)
    //sprite_index = spr_player2_climb
image_speed = 0
hsp = 0
vsp = 0
superdashing = 0
jumpDashed = 0
canClimb = 0
jumpAnim = 1
double_jump = 0
if key_up
{
    vsp = -2
    image_speed = 0.25
}
if key_right
{
    hsp = 2
    image_speed = 0.25
}
if (-key_left)
{
    hsp = -2
    image_speed = 0.25
}
if key_down
{
    vsp = 2
    image_speed = 0.25
}
if (key_jump && (-key_left))
{
    vsp = 0
    hsp = -2
    jump_left = 1
}
if (key_jump && key_right)
{
    vsp = 0
    hsp = 2
    jump_right = 1
}
if (move == 0)
    hsp = 0
if (key_jump || (!place_meeting(x, y, obj_ladder)))
{
    state = 10
    image_index = 0
    alarm[2] = 20
    movespeed = 4
    vsp = -5
}
scr_collideandmove()
