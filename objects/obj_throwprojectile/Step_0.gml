if (vsp < 12)
    vsp += grav
image_speed = 0.25
if (dying == 0)
    hsp = (image_xscale * movespeed)
if ((dying == 1) && place_meeting(x, (y + 1), obj_wall))
    hsp = movespeed
if (!(hp <= 0))
    movespeed = 3
else
    movespeed = 0
if place_meeting((x + 1), y, obj_wall)
    image_xscale = -1
if place_meeting((x - 1), y, obj_wall)
    image_xscale = 1
if (hp <= 0)
{
    dying = 1
    if (!instance_exists(obj_explosioneffect))
    {
        randomize()
        instance_create((x + random_range(-30, 30)), (y + random_range(-30, 30)), obj_explosioneffect)
    }
    if (alarmo > 0)
    {
        alarmo -= 1
        if (alarmo <= 0)
        {
            instance_destroy()
            instance_create(x, y, obj_deadeffect)
        }
    }
}

if dying = 0
	scr_collideandmove()
else
	scr_collideandmovenowall()


