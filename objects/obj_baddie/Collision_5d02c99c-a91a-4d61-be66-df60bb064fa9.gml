if (dying == 0)
{
    part_particles_create(global.P_System, x, y, global.Particle1, 4)
    dying = 1
    vsp = -5
    hsp = (sign((x - other.x)) * 10)
    if (hsp != 0)
        image_xscale = sign(hsp)
    instance_create(x, y, obj_hurteffect)
    scr_sound(19, 18)
    alarm[0] = 50
}

