if (charselect == 1)
{
    if (player == 1)
        sprite_index = spr_player_hand2
    if (player == 2)
        sprite_index = spr_player_hand
}
if (charselect == 2)
{
    if (player == 1)
        sprite_index = spr_player2_hand2
    if (player == 2)
        sprite_index = spr_player2_hand
}
image_xscale = 1
vspeed = -3
image_speed = 0.25
if place_meeting(x, y, obj_checkpoint1)
{
    state = 2
    if (player == 1)
        instance_create(x, y, obj_handdrop)
    if (player == 2)
        instance_create(x, y, obj_handdrop2)
}
