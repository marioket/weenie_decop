image_speed = 0.25
superdashing = 0
movespeed = 4
vspeed = 0
if (vsp < 12)
    vsp += grav
hsp = 0
if (charselect == 1)
    sprite_index = spr_player_intro
if (charselect == 2)
    sprite_index = spr_player2_intro
if ((sprite_index == spr_player2_intro || sprite_index == spr_player_intro) && floor(image_index) == 22)
    state = 0
scr_collideandmove()
