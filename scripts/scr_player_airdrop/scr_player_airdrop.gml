image_speed = 0.25
superdashing = 0
movespeed = 4
vspeed = 0
if (vsp < 12)
    vsp += grav
if (charselect == 1)
    sprite_index = spr_player_dashjump
if (charselect == 2)
    sprite_index = spr_player2_dashjump
if (place_meeting(x, (y + 1), obj_wall) && global.handed == 1)
{
    state = 37
    image_index = 0
    global.handed = 0
}
else if place_meeting(x, (y + 1), obj_wall)
{
    image_index = 0
    state = 14
}
scr_collideandmove()
