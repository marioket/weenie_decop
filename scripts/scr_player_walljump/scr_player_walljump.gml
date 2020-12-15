scr_getinput()
image_speed = 0.25
movespeed = 4
mask_index = spr_player_mask
wall_jumping = 1
jumpAnim = 1
move = (key_left + key_right)
double_jump = 0
mach2 = 0
if (charselect == 1)
    sprite_index = spr_player_walljump
if (charselect == 2)
    sprite_index = spr_player2_walljump
hsp = 0
vsp = 0
if (floor(image_index) == 3 && superdashing == 0)
{
    state = 10
    image_index = 0
    vsp = -8
    alarm[2] = 15
}
if (floor(image_index) == 3 && superdashing == 1)
{
    state = 30
    image_index = 0
    vsp = -8
    alarm[2] = 15
}
scr_collideandmove()
