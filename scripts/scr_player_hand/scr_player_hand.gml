grav = 0.23
hsp = 0
vsp = 0
movespeed = 4
jumps = 0
jumpspeed = 2.5
global.panic = 0
global.player_corndog = 0
global.player_saltshaker = 0
jumpAnim = 1
shoot = 1
dashAnim = 1
double_jump = 0
shoot_right = 0
shoot_left = 0
buffer_jump = 0
inv_frames = 0
canClimb = 1
landAnim = 0
jumpDashed = 0
superdashing = 0
wall_jumping = 0
incar = 0
global.player_rage = 0
global.player2_rage = 0
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
hspeed = -3
image_speed = 0.25
if (global.handed == 1)
{
    if (instance_exists(obj_checkpoint1) && global.checkpoint1activated == 1)
    {
        if (x == floor(obj_checkpoint1.x))
        {
            if (player == 1 && global.multiplayer == 1 && (!instance_exists(obj_player2)))
                instance_create(x, y, obj_player2)
            if (player == 2 && global.multiplayer == 1 && (!instance_exists(obj_player)))
                instance_create(x, y, obj_player)
            state = 2
            if (player == 1)
                instance_create(x, y, obj_handdrop)
            if (player == 2)
                instance_create(x, y, obj_handdrop2)
            hspeed = 0
        }
    }
    if (instance_exists(obj_checkpoint2) && global.checkpoint2activated == 1)
    {
        if (x == obj_checkpoint2.x)
        {
            if (player == 1 && global.multiplayer == 1 && (!instance_exists(obj_player2)))
                instance_create(x, y, obj_player2)
            if (player == 2 && global.multiplayer == 1 && (!instance_exists(obj_player)))
                instance_create(x, y, obj_player)
            state = 2
            if (player == 1)
                instance_create(x, y, obj_handdrop)
            if (player == 2)
                instance_create(x, y, obj_handdrop2)
            hspeed = 0
        }
    }
}
