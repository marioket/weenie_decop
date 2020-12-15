if instance_exists(obj_player)
    global.player_rage = 0
if instance_exists(obj_player2)
    global.player2_rage = 0
superdashing = 0
double_jump = 0
if (vsp < 12)
    vsp += grav
hsp = 0
if (floor(image_index) == 0)
    image_speed = 0.25
if place_meeting(x, (y + 1), obj_wall)
{
    if (charselect == 1)
        sprite_index = spr_player_victory
    if (charselect == 2)
        sprite_index = spr_player2_victory
    if (floor(image_index) == 5)
        image_speed = 0
}
if (!place_meeting(x, (y + 1), obj_wall))
{
    if (charselect == 1)
        sprite_index = spr_player_dashjump
    if (charselect == 2)
        sprite_index = spr_player2_dashjump
}
scr_collideandmove()
