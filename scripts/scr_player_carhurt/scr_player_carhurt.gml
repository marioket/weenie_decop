scr_getinput()
image_speed = 0.2
wall_jumping = 0
move = (key_left + key_right)
hsp = (move * movespeed)
mask_index = spr_carmask
movespeed = 4
cardashing = 0
double_jump = 0
dashAnim = 1
if (charselect == 1)
{
    if (jumpAnim == 1)
        sprite_index = spr_player_carjump
    if (floor(image_index) == 5)
    {
        jumpAnim = 0
        image_speed = 0
    }
    if (jumpAnim == 0)
    {
        sprite_index = spr_player_carjump
        image_index = 5
        image_speed = 0
    }
}
if (charselect == 2)
{
    if (jumpAnim == 1)
        sprite_index = spr_player2_carjump
    if (floor(image_index) == 5)
    {
        jumpAnim = 0
        image_speed = 0
    }
    if (jumpAnim == 0)
    {
        sprite_index = spr_player2_carjump
        image_index = 5
        image_speed = 0
    }
}
if (hurted == 0)
{
    if (player == 1)
        global.player_hp -= 1
    if (player == 2)
        global.player2_hp -= 1
    hurted = 1
}
if (vsp < 12)
    vsp += grav
if place_meeting(x, (y + 1), obj_wall)
{
    instance_create(x, (y + 24), obj_cloudeffect)
    state = 5
    buffer_jump = 0
    jumpDashed = 0
    image_index = 0
}
if place_meeting(x, (y + 1), obj_spring)
{
    state = 5
    jumpAnim = 1
    image_index = 0
    double_jump = 0
}
if (floor(image_index) == 4)
    alarm[1] = 40
if (floor(image_index) == 5)
    state = 5
if (player == 1)
{
    if (global.player_hp <= 0 && (!instance_exists(obj_hand)))
        instance_create((view_xview[0] - 100), (view_yview[0] + 300), obj_hand)
}
if (player == 2)
{
    if (global.player2_hp <= 0 && (!instance_exists(obj_hand2)))
        instance_create((view_xview[0] - 100), (view_yview[0] + 300), obj_hand2)
}
buffer_jump = 0
image_alpha = 1
inv_frames = 1
scr_collideandmove()
