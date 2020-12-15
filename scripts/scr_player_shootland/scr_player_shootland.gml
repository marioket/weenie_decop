scr_getinput()
image_speed = 0.25
mask_index = spr_player_mask
move = (key_left + key_right)
if (global.player_corndog == 0)
{
    if (charselect == 1)
        sprite_index = spr_player_shootland
    if (charselect == 2)
        sprite_index = spr_player2_shootland
}
if (global.player_corndog == 1)
{
    if (charselect == 1)
        sprite_index = spr_player_shootlandS
    if (charselect == 2)
        sprite_index = spr_player2_shootlandS
}
hsp = 0
if (floor(image_index) == 3)
{
    state = 0
    shoot_right = 0
    shoot_left = 0
}
scr_collideandmove()
