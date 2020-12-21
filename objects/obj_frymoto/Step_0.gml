if (vsp < 12)
    vsp += grav
image_speed = 0.25
if (dying == 0)
{
    if place_meeting(x, (y + 1), obj_wall)
    {
        sprite_index = spr_frymoto_ground
        movespeed = 10
    }
    else if (!place_meeting(x, (y + 1), obj_wall))
        sprite_index = spr_frymoto_air
    hsp = (image_xscale * movespeed)
}
if (place_meeting((x + 1), y, obj_wall) && (image_xscale == 1))
{
    if (dying == 0)
    {
        part_particles_create(global.P_System, x, y, global.Particle1, 4)
        dying = 1
        vspeed = -20
        hspeed = 10
        if (image_xscale != 0)
            image_xscale = sign(hspeed)
        instance_create(x, y, obj_hurteffect)
        obj_camera.shake = 1
        obj_camera.alarm[0] = 10
		with (instance_create(x, y, obj_baddie_fry))
            image_xscale = other.image_xscale
    }
}
if (place_meeting((x - 1), y, obj_wall) && (image_xscale == -1))
{
    if (dying == 0)
    {
        part_particles_create(global.P_System, x, y, global.Particle1, 4)
        dying = 1
        vspeed = -20
        hspeed = -10
        if (image_xscale != 0)
            image_xscale = sign(hspeed)
        instance_create(x, y, obj_hurteffect)
        obj_camera.shake = 1
        obj_camera.alarm[0] = 10
		with (instance_create(x, y, obj_baddie_fry))
            image_xscale = other.image_xscale
    }
}
if (dying == 1)
{
    if (itemdrop == 0)
    {
        with (instance_create(x, y, obj_moto))
            image_xscale = other.image_xscale
        instance_create(x, y, obj_coin)
        itemdrop = 1
    }
    sprite_index = spr_baddie_fry_dead
    if (!instance_exists(obj_explosioneffect))
    {
        randomize()
        instance_create((x + random_range(-30, 30)), (y + random_range(-30, 30)), obj_explosioneffect)
    }
}

if dying = 0
	scr_collideandmove()
else
	scr_collideandmovenowall()

