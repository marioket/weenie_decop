scr_getinput()
image_speed = 0.25
movespeed = 4
move = (key_left + key_right)
dashAnim = 1
mask_index = spr_carmask
if (charselect == 1)
    sprite_index = spr_player_carcrash
if (charselect == 2)
    sprite_index = spr_player2_carcrash
vsp = 0
hsp = 0
if (floor(image_index) == 3)
    state = 3
scr_collideandmove()
