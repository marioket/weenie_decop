if ((obj_player.inv_frames == 0) && ((dying == 0) && ((obj_player.state != 32) && ((obj_player.superdashing == 0) && ((obj_player.state != 11) && ((obj_player.state != 19) && ((obj_player.state != 34) && ((obj_player.state != 31) && ((obj_player.state != 23) && ((obj_player.state != 7) && ((obj_player.state != 3) && ((obj_player.state != 5) && ((obj_player.state != 6) && (obj_player.state != 4))))))))))))))
{
    obj_player.alarm[5] = 10
    obj_player.vsp = -4
    obj_player.hsp = (sign((x - other.x)) * -5)
    obj_player.state = 16
    obj_player.image_index = 0
    scr_sound(16, 15)
    scr_sound(12, 11, 10)
    instance_create(obj_player.x, obj_player.y, obj_hurteffect)
}
if ((obj_player.state == 32) || ((obj_player.superdashing == 1) || ((obj_player.state == 23) || ((obj_player.state == 7) || ((obj_player.state == 6) || ((obj_player.state == 3) || ((obj_player.state == 5) || (obj_player.state == 4))))))))
{
    if (dying == 0)
    {
        part_particles_create(global.P_System, x, y, global.Particle1, 4)
        dying = 1
        vspeed = -20
        hspeed = (sign((x - other.x)) * 10)
        if (image_xscale != 0)
            image_xscale = sign(hspeed)
        scr_sound(19, 18)
        instance_create(x, y, obj_hurteffect)
    }
}


