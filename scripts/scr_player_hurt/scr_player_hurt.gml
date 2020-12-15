if (vsp < 12)
    vsp += grav
if (charselect == 1)
    sprite_index = spr_player_jumphurt
if (charselect == 2)
    sprite_index = spr_player2_jumphurt
mach2 = 0
if (place_meeting(x, (y + 1), obj_wall) && hurted == 1)
{
    vsp = -3
    alarm[1] = 40
    state = 0
    hurted = 0
}
mask_index = spr_player_mask
movespeed = 4
image_speed = 0.25
dashAnim = 1
superdashing = 0
double_jump = 0
wall_jumping = 0
landAnim = 0
buffer_jump = 0
image_alpha = 1
inv_frames = 1
scr_collideandmove()
