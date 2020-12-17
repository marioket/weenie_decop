if (place_meeting(x, (y - 1), obj_player) && obj_player.y < y && obj_player.state != 11)
{
    obj_player.flash = 1
    obj_player.state = 3
    obj_player.x = x
    instance_destroy()
}
if (vsp < 12)
    vsp += grav
scr_collideandmove()


