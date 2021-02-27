if ((obj_player.state != 16 || obj_player.state != 11) && global.player_hp != 7)
{
    scr_sound(14)
    instance_destroy()
    instance_create(x, y, obj_pepgeteffect)
    global.player_hp = 7
    part_particles_create(global.P_System, obj_player.x, obj_player.y, global.Particle2, 7)
    obj_player.flash = 1
    background_visible[2] = 1
    obj_backgroundmoving.alarm[0] = 30
}


