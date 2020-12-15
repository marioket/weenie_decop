scr_getinput()
image_speed = 0.25
mask_index = spr_player_mask
movespeed = 4
move = (key_left + key_right)
if (charselect == 1)
    sprite_index = spr_player_dashlandwall
if (charselect == 2)
    sprite_index = spr_player2_dashlandwall
vsp = 0
hsp = 0
if (floor(image_index) == 3)
{
    state = 0
    shoot_right = 0
    shoot_left = 0
}
scr_collideandmove()
