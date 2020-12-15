scr_getinput()
image_speed = 0.2
wall_jumping = 0
move = (key_left + key_right)
hsp = (move * movespeed)
mask_index = spr_player_mask
movespeed = 4
superdashing = 0
double_jump = 0
dashAnim = 1
mach2 = 0
if (charselect == 1)
    sprite_index = spr_player_jumphurt
if (charselect == 2)
    sprite_index = spr_player2_jumphurt
if (hurted == 0)
{
    if (player == 1)
        global.player_hp -= 3
    if (player == 2)
        global.player2_hp -= 3
    hurted = 1
}
if (move != 0 && double_jump == 0)
    image_xscale = move
if (vsp < 12)
    vsp += grav
if place_meeting(x, (y + 1), obj_wall)
{
    instance_create(x, (y + 24), obj_cloudeffect)
    state = 14
    buffer_jump = 0
    jumpDashed = 0
    image_index = 0
}
if place_meeting(x, (y + 1), obj_spring)
{
    state = 21
    jumpAnim = 1
    image_index = 0
    double_jump = 0
}
if (floor(image_index) == 4)
    alarm[1] = 40
if (floor(image_index) == 6)
    state = 0
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
