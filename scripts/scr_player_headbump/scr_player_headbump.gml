scr_getinput()
if (charselect == 1)
    sprite_index = spr_player_headbump
if (charselect == 2)
    sprite_index = spr_player2_headbump
if (floor(image_index) == 0)
    image_speed = 0.25
if (floor(image_index) == 2)
    image_speed = 0
hsp = 0
vsp = 0
scr_collideandmove()
